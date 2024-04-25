import 'package:get/get.dart';
import '../controller/verification_code_controller.dart';

class VerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationController());
  }
}
