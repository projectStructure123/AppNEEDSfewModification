import 'package:get/get.dart';

import '../../../util/image_constant.dart';
import 'homecat_item_model.dart';

class HomeCatModel  {
  Rx<List<HomecatItemModel>> homecatItemList = Rx([
    HomecatItemModel(imageEighty: ImageConstant.imgImage80.obs, category: "Category1"),
    HomecatItemModel(imageEighty: ImageConstant.imgImage80162x150.obs, category: "Category2"),
    HomecatItemModel(imageEighty: ImageConstant.imgImage801.obs, category: "Category3"),
  ]);

  // Method to perform action based on category
  void performActionByCategory(String category) {
    switch (category) {
      case "Category1":
      // Do something specific for Category1
        break;
      case "Category2":
      // Do something specific for Category2
        break;
      case "Category3":
      // Do something specific for Category3
        break;
      default:
      // Handle default case
        break;
    }
  }
}
