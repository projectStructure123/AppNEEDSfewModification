import 'package:get/get.dart';

import '../controller/welcome_screen_and_sign_in_controller.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeController());
  }
}
