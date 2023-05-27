import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:zeezuu/screens/homepage.dart';
import 'package:zeezuu/screens/profile.dart';
import '../utils/utils.dart';
import 'main.controller.dart';

//CHANGE COLORS TO MY AESTHETIC
class AuthController extends GetxController {
  static AuthController get to => Get.find();
  late Rx<User?> firebaseUser;
//holds extra user data
  var firebaseUserData = {}.obs;
//from Utils
  var auth;
  var firestore;

  late CollectionReference users;

  @override
  void onReady() {
    super.onReady();
    auth = FirebaseAuth.instance;
    firestore = FirebaseFirestore.instance;
    // initialize user
    users = firestore.collection('users');
    firebaseUser = Rx<User?>(auth.currentUser);
    firebaseUserData.value = {};
    //track user data changes
    firebaseUser.bindStream(auth.userChanges());
    //If user changes to null, send user to login screen
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) async {
    if (user == null) {
      // if the user is not found then the user is navigated to the Register Screen
      Get.offAll(() => const Profile());
    } else {
      // if the user exists and logged in the the user is navigated to the Dashboard Screen
      Utils.showLoading(message: "Fetching Profile...");
      var fsUser = await users.doc(user.uid).get();
      firebaseUserData.value.addAll(
          fsUser.data() == null ? {} : fsUser.data() as Map<String, dynamic>);
      update();
      Get.offAll(() => HomePage());
      Utils.dismissLoader();
      MainController.to.favoritesDiyRecipes.bindStream(MainController.to.favoritesDiyRecipesStream());
      MainController.to.diyRecipes.bindStream(MainController.to.diyRecipesStream());
      MainController.to.beautyRoutine.bindStream(MainController.to.beautyRoutineStream());
    }
  }

  Future<bool> register(String email, String password, String name,
      String phone, List<String>? favoritedRecipes) async {
    Utils.showLoading(message: "Creating account…");
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      var user = auth.currentUser;
      if (user != null) {
        var fsUser = await users.doc(user.uid).get();

        if (!fsUser.exists) {
          await users.doc(user.uid).set({
            "name": "$name",
            "phone": "$phone",
            "email": "$email",
            "favoritedRecipes": []
          });
        }
        Utils.showSuccess("Signup Successful!");
        Utils.dismissLoader();

        return true;
      } else {
        Utils.showError("Signup Failed!");
        Utils.dismissLoader();

        return false;
      }
    } catch (firebaseAuthException) {
      Utils.showError("Signup Failed!");
      Utils.dismissLoader();
      return false;
    }
  }

  Future<bool> login(String email, password) async {
    Utils.showLoading(message: "Authenticating…");

    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      var user = auth.currentUser;

      if (user != null) {
        Utils.showSuccess("Login Successful!");
        //Utils.dismissLoader();
      }
    } catch (firebaseAuthException) {
      Utils.showError("Login  Failed!");
      Utils.dismissLoader();
      return false;
    }
    Utils.dismissLoader();
    return false;
  }

  Future signOut() async {
    Utils.showLoading(message: "Signing out…");

    await auth.signOut();
    Utils.dismissLoader();
  }

  //Favorited recipes
  favoritedRecipes(existingRecipeId) async {
    if (!firebaseUserData.value.containsKey("favoritedRecipes")) {
      await users.doc(firebaseUser.value?.uid).set({
        "favoritedRecipes": [existingRecipeId]
      });
    } else {
      var recipiesFavourited = firebaseUserData["favouritedRecipes"];
      recipiesFavourited.add(existingRecipeId);
      await users
          .doc(firebaseUser.value?.uid)
          .set({"favouritedRecipes": recipiesFavourited});

      //update locally
      firebaseUserData["favouritedRecipes"] = recipiesFavourited;
      update();
    }
  }
  //unfavoriting recipes
  unfavoritedRecipes(recipeIdRemoved) async {
    var recipiesFavourited = firebaseUserData["favouritedRecipes"];

    (recipiesFavourited as List)
        .removeWhere((favoritedId) => favoritedId == recipeIdRemoved);
    await users.doc(firebaseUser.value?.uid).set({
      "favouritedRecipes": recipiesFavourited
    });

    //update locally
    firebaseUserData["favouritedRecipes"] = recipiesFavourited;
    update();
  }
}
