import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_field.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../util/image_constant.dart';
import 'controller/sign_up_controller.dart'; // Import your controller

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final SignUpController _controller = Get.put(SignUpController());
  final _emailController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageConstant.backgroundImg),
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
            body: Obx(() => ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'الاشتراك',
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.displaySmall,
                                ),
                              ],
                            ),
                          ),
                          CustomTextField(
                            textAlign: TextAlign.right,
                            hint: "الاسم",
                            suffixIcon: Icon(Icons.person_rounded),
                            controller: _firstNameController,
                            textInputType: TextInputType.name,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'FirstName field is required';
                              }
                            },
                          ),
                          CustomTextField(
                            textAlign: TextAlign.right,
                            hint: "اللقب",
                            suffixIcon: Icon(Icons.person_rounded),
                            controller: _lastNameController,
                            textInputType: TextInputType.name,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'LastName field is required';
                              }
                            },
                          ),
                          CustomTextField(
                            textAlign: TextAlign.right,
                            hint: "البريد الالكتروني",
                            suffixIcon: Icon(Icons.email),
                            controller: _emailController,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Email field is required';
                              }
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xFFBAC2C7),
                                // Same border color as CustomTextField
                                width:
                                    0.5, // Same border width as CustomTextField
                              ),
                              borderRadius: BorderRadius.circular(
                                  10), // Same border radius as CustomTextField
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: IntlPhoneField(
                                  disableLengthCheck: true,
                                  textAlign: TextAlign.right,
                                  decoration: InputDecoration(
                                    hintTextDirection: TextDirection.rtl,
                                    hintText: 'رقم الهاتف',
                                    hintStyle: CustomTextStyles.bodyLarge18,
                                    border: InputBorder
                                        .none, // Remove the default border
                                  ),
                                  initialCountryCode: 'EG',
                                  onChanged: (phone) {
                                    print(phone.completeNumber);
                                  },

                                  dropdownIconPosition: IconPosition.trailing,

                                ),
                              ),
                            ),
                          ),
                          CustomTextField(
                            textAlign: TextAlign.right,
                            obscureText: true,
                            hint: "كلمة المرور",
                            suffixIcon: Icon(Icons.lock),
                            controller: _passwordController,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Password field is required';
                              }
                            },
                          ),CustomTextField(
                            textAlign: TextAlign.right,
                            obscureText: true,
                            hint: "تأكيد كلمة المرور",
                            suffixIcon: Icon(Icons.lock),
                            controller: _confirmPasswordController,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'ConfirmPassword field is required';
                              }
                            },
                          ),


                          // Add other text fields similarly
                          SizedBox(height: 24),
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
                                        _controller
                                            .toggleTerms(); // Use the controller method
                                      },
                                      child: Text(
                                        'اتفق مع الشروط والاحكام ',
                                        style: CustomTextStyles
                                            .bodyMediumTajawalGray800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _controller
                                      .toggleTerms(); // Use the controller method
                                },
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: _controller.isChecked.value
                                        ? Colors.white
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                    // Make it half of the height to make it round
                                    border: Border.all(
                                      color: _controller.isChecked.value
                                          ? Color(0xFF720D83)
                                          : Colors.black26,
                                      width: 2,
                                    ),
                                  ),
                                  child: _controller.isChecked.value
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
                          SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 50.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      try {
                                        Get.toNamed(AppRoutes.welcomeScreen);
                                      } catch (e) {
                                        print('Navigation error: $e');
                                      }
                                    },
                                    child: ElevatedButton(
                                      onPressed: _controller.signUp,
                                      // Use the controller method
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        backgroundColor: Color(0xFF720D83),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 40, vertical: 16),
                                      ),
                                      child: Text(
                                        'الاشتراك',
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles.bodyLarge18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          // Add some space between the button and the text
                          Container(
                            width: 400,
                            margin: EdgeInsets.only(
                              left: 40,
                              right: 46,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "لديك اشتراك بالفعل ؟ ",
                                    style: CustomTextStyles
                                        .bodyMediumTajawalff5b5b5e,
                                  ),
                                  TextSpan(
                                    text: "تسجيل الدخول",
                                    style: CustomTextStyles
                                        .bodyMediumTajawalff6a1179,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        // Navigate to the login screen when the text is clicked
                                        Get.toNamed(AppRoutes.welcomeScreen);
                                      },
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6,
                              right: 5,
                              bottom: 37,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 13,
                                    bottom: 14,
                                  ),
                                  child: SizedBox(
                                    width: 102,
                                    child: Divider(
                                      color:
                                          appTheme.gray40001.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 151,
                                  margin: EdgeInsets.only(left: 2),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "تسجيل الدخول",
                                          style: CustomTextStyles
                                              .bodyMediumTajawalff5b5b5e,
                                        ),
                                        TextSpan(
                                          text: " باسم زائر",
                                          style: CustomTextStyles
                                              .bodyMediumTajawalff6a1179,
                                        )
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 13,
                                    bottom: 14,
                                  ),
                                  child: SizedBox(
                                    width: 107,
                                    child: Divider(
                                      color:
                                          appTheme.gray40001.withOpacity(0.5),
                                      indent: 5,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ),
        Positioned(
          top: 22.0, // Adjust the position as needed
          left: 1.0, // Adjust the position as needed
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: GestureDetector(
              onTap: () {
                // Navigate back when the arrow icon is tapped
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
