import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:zeezuu/utils/utils.dart';

class MainController extends GetxController {
  static MainController get to => Get.find();

  var firestore;
  //CREATING TABLES FOR DIYRE
  var diyRecipes = <String, dynamic>{}.obs;
  var favoritesDiyRecipes = {}.obs;
  var beautyRoutine = <String, dynamic>{}.obs;

  //SELECTING SINGLE
  var diyRecipesSelectedId = "".obs;
  var favoritesDiyRecipesSelectedId = "".obs;
  var beautyRoutineSelectedId = "".obs;

  @override
  void onReady() {
    super.onReady();
    firestore = FirebaseFirestore.instance;

    //Reactive list
    diyRecipes.bindStream(diyRecipesStream());
    // favoritesDiyRecipes.bindStream(favoritesDiyRecipesStream());
    beautyRoutine.bindStream(beautyRoutineStream());

    Box box = Hive.box("favorites");
    favoritesDiyRecipes.value = box.toMap();
    update();
  }

  addRemoveRecipe(id) async {
    Box box = Hive.box("favorites");
    if (box.containsKey(id)) {
      await box.delete(id);
    } else {
      await box.put("$id", diyRecipes[id]);
    }
    favoritesDiyRecipes.value = box.toMap();
    update();
  }

  //CREATING METHODS
  createDiyRecipes(title, imageUrl, description) async {
    Utils.showLoading(message: "Creating Diy Recipes");
    try {
      await firestore.collection('diyrecipes').add({
        "title": title,
        "imageurl": imageUrl,
        "description": description,
        "created": DateTime.now().millisecondsSinceEpoch
      });
      Utils.showSuccess("Creation Successful");
      Utils.dismissLoader();
    } catch (e) {
      Utils.showError("Creation failed");
      Utils.dismissLoader();
    }
  }

  createBeautyRoutines(routineTime, isUserGenerated) async {
    Utils.showLoading(message: "Creating Beauty Routines");
    try {
      await firestore.collection('BeautyRoutines').add({
        "routineTime": routineTime,
        "isUserGenerated": isUserGenerated,
        "created": DateTime.now().millisecondsSinceEpoch
      });
      Utils.showSuccess("Creation Successful");
      Utils.dismissLoader();
    } catch (e) {
      Utils.showError("Creation failed");
      Utils.dismissLoader();
    }
  }

  //UPDATING METHOD
  updateDiyRecipes(title, imageUrl, description) async {
    Utils.showLoading(message: "Updating Diy Recipes");
    try {
      await firestore
          .collection('diyrecipes')
          .doc(diyRecipesSelectedId)
          .update({
        "title": title,
        "imageurl": imageUrl,
        "description": description,
      });
      Utils.showSuccess("Update Successful");
      Utils.dismissLoader();
    } catch (e) {
      Utils.showError("Update Failed");
      Utils.dismissLoader();
    }
  }

  updateBeautyRoutines(routineTime, isUserGenerated) async {
    Utils.showLoading(message: "Updating Beauty Routines");
    try {
      await firestore
          .collection('BeautyRoutines')
          .doc(beautyRoutineSelectedId)
          .update({
        "routineTime": routineTime,
        "isUserGenerated": isUserGenerated,
      });
      Utils.showSuccess("Update Successful");
      Utils.dismissLoader();
    } catch (e) {
      Utils.showError("Update Failed");
      Utils.dismissLoader();
    }
  }

//DELETE METHOD
  deleteDiyRecipes(id) async {
    Utils.showLoading(message: "Deleting Diy Recipes");
    try {
      await firestore.collection('diyrecipes').doc(id).delete();
      Utils.showSuccess("Delete Successful");
      Utils.dismissLoader();
    } catch (e) {
      Utils.showError("Delete failed");
      Utils.dismissLoader();
    }
  }

  deleteBeautyRoutines(id) async {
    Utils.showLoading(message: "Deleting Beauty Routines");
    try {
      await firestore.collection('BeautyRoutines').doc(id).delete();
      Utils.showSuccess("Delete Successful");
      Utils.dismissLoader();
    } catch (e) {
      Utils.showError("Delete failed");
      Utils.dismissLoader();
    }
  }

  //Fetch livestream
  Stream<Map<String, dynamic>> diyRecipesStream() {
    var ref = FirebaseFirestore.instance.collection('diyrecipes').snapshots();
    return ref.map((list) {
      return {for (var element in list.docs) element.id: element.data()};
    });
  }

//Select Item Id
  selectDiyRecipes(id) {
    diyRecipesSelectedId.value = id;
    update();
  }

// //Fetch livestream
//   Stream<Map<String, dynamic>> favoritesDiyRecipesStream() {
//     var ref = FirebaseFirestore.instance
//         .collection('Favorite Diy Recipes')
//         .snapshots();
//     return ref.map((list) {
//       return {for (var element in list.docs) element.id: element.data()};
//     });
//   }

// //Select Item Id
//   selectFavoriteDiyRecipes(id) {
//     favoritesDiyRecipesSelectedId.value = id;
//     update();
//   }

//Fetch livestream
  Stream<Map<String, dynamic>> beautyRoutineStream() {
    var ref =
        FirebaseFirestore.instance.collection('BeautyRoutines').snapshots();
    return ref.map((list) {
      return {for (var element in list.docs) element.id: element.data()};
    });
  }

//Select Item Id
  selectBeautyRoutines(id) {
    beautyRoutineSelectedId.value = id;
    update();
  }

  // Stream<Map<String, dynamic>> favoritesDiyRecipesStream() {
  //   Box box = Hive.box("favorites");
  //   return box.toMap()..map((list) {
  //     return {for (var element in list.docs) element.id: element.data()};
  //   });
  // }
}
