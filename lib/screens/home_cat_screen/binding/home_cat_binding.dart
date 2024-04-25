import 'package:get/get.dart';
import 'package:souqna_app/screens/home_cat_screen/controller/home_cat_controller.dart';

/// A binding class for the HomeCatScreen.
///
/// This class ensures that the HomeCatController is created when the
/// HomeCatScreen is first loaded.
class HomeCatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeCatController());
  }
}
