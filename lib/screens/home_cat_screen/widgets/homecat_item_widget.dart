
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../theme/app_decoration.dart';
import '../models/homecat_item_model.dart';
import '../controller/home_cat_controller.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomecatItemWidget extends StatelessWidget {
  HomecatItemWidget(
    this.homecatItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomecatItemModel homecatItemModelObj;

  var controller = Get.find<HomeCatController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 173,
        width: 150,
        decoration: AppDecoration.outlineBluegray1001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Obx(
              () => ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.network(
              homecatItemModelObj.imageEighty!.value, // Assuming this is a URL
              width: 150,
              fit: BoxFit.cover, // Adjust the fit as per your requirement
            ),
          ),
        ),

      ),
    );
  }
}
