import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignUpController extends GetxController {
  final nameController = TextEditingController();
  final isChecked = false.obs;

  void toggleTerms() {
    isChecked.value = !isChecked.value;
  }

  void signUp() {
    // Add your sign-up logic here
  }

  @override
  void dispose() {
    // Clean up your text controllers
    nameController.dispose();
    super.dispose();
  }
}
