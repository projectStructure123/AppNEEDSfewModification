import 'package:get/get_rx/src/rx_types/rx_types.dart';
import '../../../core/app_export.dart';
import '../../../util/image_constant.dart';

/// This class is used in the [homecat_item_widget] screen.
class HomecatItemModel {
  HomecatItemModel({
    RxString? imageEighty,
    RxString? id,
    required String category, // Define the 'category' property
  }) {
    this.imageEighty = imageEighty ?? RxString(ImageConstant.imgImage80);
    this.id = id ?? RxString("");
    this.category = category;
  }

  late RxString imageEighty;
  late RxString id;
  late String category; // Define the 'category' property
}
