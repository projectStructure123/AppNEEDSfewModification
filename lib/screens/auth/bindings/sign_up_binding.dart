import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:souqna_app/screens/auth/controller/sign_up_controller.dart'; // Import the controller

/// A binding class for the SignUpScreen.
///
/// This class ensures that the SignUpController is created when the
/// SignUpScreen is first loaded.
class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}
