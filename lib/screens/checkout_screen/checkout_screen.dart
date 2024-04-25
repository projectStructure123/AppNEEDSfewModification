import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../theme/custom_text_field.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../util/image_constant.dart';
import 'controller/checkout_controller.dart';


class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final CheckoutController controller = Get.put(CheckoutController());

  bool _isChecked = false;
  Color borderColor = Colors.black;
  Color borderColor2 = Colors.black;
  bool isChecked = false;
  bool isChecked2 = false;
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white
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

                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                        child: Text('الدفع',style: CustomTextStyles.bodyLarge18.copyWith(fontSize:20.0,color:Colors.black,fontWeight:FontWeight.w500,),)
                    ),
                  ],
                ),
              ),
            ),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isChecked = !_isChecked;
                                    });
                                  },
                                  child: Text(
                                    'توصيل     - 5.00 ج.م ',
                                    style: CustomTextStyles
                                        .bodyMediumTajawalGray800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isChecked = !_isChecked;
                              });
                            },
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: _isChecked
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(15),
                                // Make it half of the height to make it round
                                border: Border.all(
                                  color: _isChecked
                                      ? Color(0xFF720D83)
                                      : Colors.black26,
                                  width: 2,
                                ),
                              ),
                              child: _isChecked
                                  ? Icon(
                                Icons.circle,
                                size: 10.0,
                                color: Color(0xFF720D83),
                              )
                                  : null,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isChecked = !_isChecked;
                                    });
                                  },
                                  child: Text(
                                    ' استلام شخصي Take away     - مجاني',
                                    style: CustomTextStyles
                                        .bodyMediumTajawalGray800,
                                    textDirection: TextDirection.rtl,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isChecked = !_isChecked;
                              });
                            },
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: _isChecked
                                    ? Colors.white
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(15),
                                // Make it half of the height to make it round
                                border: Border.all(
                                  color: _isChecked
                                      ? Color(0xFF720D83)
                                      : Colors.black26,
                                  width: 2,
                                ),
                              ),
                              child: _isChecked
                                  ? Icon(
                                Icons.circle,
                                size: 10.0,
                                color: Color(0xFF720D83),
                              )
                                  : null,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 0.5,

                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        textDirection: TextDirection.rtl,
                        children: [
                          Text('تسليم إلى',style: CustomTextStyles.bodyLarge18.copyWith(color:Colors.black,fontSize:20.0),),
                          Text('+ أضف',textDirection: TextDirection.rtl,style: CustomTextStyles.bodyMediumTajawalff6a1179.copyWith(fontSize:20.0),),
                        ],
                      ),
                      SizedBox(height: 10,),

                      CustomTextField(
                        textAlign: TextAlign.right,
                        label: 'الشارع',
                        hint: 'الشارع',
                        controller: _emailController,
                        textInputType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email field is required';
                          }
                        },
                      ),
                      SizedBox(height: 10,),

                      CustomTextField(
                        textAlign: TextAlign.right,
                        label: 'رقم المنزل / الشقة',
                        hint: 'الشقه',
                        controller: _emailController,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email field is required';
                          }
                        },
                      ),
                      SizedBox(height: 20,),
                      Stack(
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(width: 0.5, color: Color(0xFFBAC2C7)),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0), // Adjust the padding as needed
                                  child: Container(
                                    width: 90, // Width of the button
                                    height: 50, // Height of the button
                                    decoration: BoxDecoration(
                                      color: Color(0xFF720D83),
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Center(child: Text('تطبيق',style: CustomTextStyles.bodyLarge18.copyWith(color:Colors.white),)), // Button icon
                                  ),
                                ),
                                Expanded(
                                  child: TextField(
                                    textAlign: TextAlign.right,
                                    decoration: InputDecoration(
                                      hintText: 'رمز ترويجي',
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Color(0xFFBAC2C7),
                              thickness: 0.5,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'اختر وسيلة الدفع',
                              style: CustomTextStyles.bodyLarge18.copyWith(color:Colors.black),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xFFBAC2C7),
                              thickness: 0.5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            borderColor2 = borderColor2 == Colors.purple ? Colors.black : Colors.purple;
                            isChecked2 = !isChecked2;// Toggle the border color
                          });
                        },
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(color: borderColor2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    if (isChecked2)
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 20.0,
                                      ),
                                    SizedBox(width: isChecked2 ? 5 : 0),
                                    Expanded(child: Center(child: Text('الدفع عند الاستلام',style: CustomTextStyles.bodyMediumTajawalff5b5b5e.copyWith(color:borderColor2,fontSize:18.0),))),
                                  ],
                                ),

                              ),
                            ),
                            Positioned(
                              left: 300,
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Image.asset(
                                ImageConstant.imgCashInHand,
                                // Adjust the width as needed
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            borderColor = borderColor == Colors.purple ? Colors.black : Colors.purple; // Toggle the border color
                            isChecked = !isChecked; // Toggle the checked state
                          });
                        },
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Container(
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(color: borderColor),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    if (isChecked)
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                        size: 20.0,
                                      ),
                                    SizedBox(width: isChecked ? 5 : 0), // Add some space only if the icon is present
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          'الدفع الان',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: borderColor, fontSize: 18.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 300,
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Image.asset(
                                ImageConstant.imgWallet,
                                // Adjust the width as needed
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 50.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.to(CheckoutScreen());
                                  // Handle sign-up button press
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor: Color(0xFF720D83),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 16),
                                ),
                                child: Text(
                                  'تاكيد الطلب',
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyLarge18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),


                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 14.0, // Adjust the position as needed
          left: 1.0,
          // Adjust the position as needed
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
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0.5,
                      blurRadius: 2,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
              ),
            ),
          ),
        ),

      ],
    );
  }
}