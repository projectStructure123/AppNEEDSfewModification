import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:souqna_app/screens/home_cat_screen/widgets/homecat_item_widget.dart';
import 'package:souqna_app/util/app_export.dart';
import '../../theme/theme_helper.dart';
import '../../util/image_constant.dart';
import 'controller/home_cat_controller.dart'; // ignore_for_file: must_be_immutable
import 'models/homecat_item_model.dart';


class HomeCatScreen extends GetWidget<HomeCatController> {
  const HomeCatScreen({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    // Initialize HomeCatController
    final HomeCatController controller = Get.put(HomeCatController());

    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstant.HomeCartBackground),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            extendBodyBehindAppBar: true,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(
                100.0,
              ),
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 97.62,
                      height: 66,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstant.imgDirect21),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 156,
                            margin: EdgeInsets.only(right: 5),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "اختار\n",
                                    style: theme.textTheme.displayMedium,
                                  ),
                                  TextSpan(
                                    text: "القسم",
                                    style: theme.textTheme.displayLarge,
                                  )
                                ],
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),),
                      SizedBox(height: 100.0),
                      Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Obx(
                              () => GridView.builder(
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 174,
                              crossAxisCount: 2,
                              mainAxisSpacing: 23,
                              crossAxisSpacing: 23,
                            ),
                            physics: NeverScrollableScrollPhysics(),
                            itemCount:
                            controller.homeCatModelObj.value.homecatItemList.value.length,
                            itemBuilder: (context, index) {
                              HomecatItemModel model =
                              controller.homeCatModelObj.value.homecatItemList.value[index];
                              return GestureDetector(
                                onTap: ()
                                {
                                  controller.performActionByCategory(model.category);

                                },
                                child: HomecatItemWidget(
                                  model,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                                            ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 22.0, // Adjust the position as needed
          left: 1.0, // Adjust the position as needed
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: GestureDetector(
              onTap: () {
                // Handle the tap action
                Get.back();
              },
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child:
                Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}



