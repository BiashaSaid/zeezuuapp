import 'package:get/get.dart';
import 'package:zeezuu/controllers/auth_controller.dart';
import 'package:zeezuu/controllers/main.controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
    Get.put<MainController>(MainController());
  }
}
