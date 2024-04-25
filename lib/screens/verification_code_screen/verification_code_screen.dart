import 'package:flutter/material.dart';

import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../util/image_constant.dart';

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:
      [  Positioned.fill(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageConstant.backgroundImg),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
        SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,

        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(.0),
                child: Container(
                  width: 97.62,
                  height: 66,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstant.imgDirect21),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 200),
                Padding(
                  padding: EdgeInsets.only(right: 22),
                  child: Text(
                    "رمز التحقق",
                    style: theme.textTheme.displaySmall,
                  ),
                ),
                SizedBox(height: 43),
                Padding(
                  padding: EdgeInsets.only(right: 32),
                  child: Text(
                    "برجاء ادخال رمز التحقق الذي تم ارساله اليك",
                    style: CustomTextStyles.bodyMediumTajawalGray500,
                  ),
                ),
                SizedBox(height: 40.0),
                VerificationCodeInput(),
                SizedBox(height: 50.0),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0, horizontal: 50.0),
                    child: ElevatedButton(
                      onPressed: () {
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
                        'التحقق',
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLarge18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
    ],);
  }
}

class VerificationCodeInput extends StatefulWidget {
  @override
  _VerificationCodeInputState createState() => _VerificationCodeInputState();
}

class _VerificationCodeInputState extends State<VerificationCodeInput> {
  List<TextEditingController> controllers =
  List.generate(4, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            4,
                (index) => SizedBox(
              width: 50.0,
              child: TextField(
                controller: controllers[index],
                maxLength: 1,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  counter: Offstage(),
                  border: OutlineInputBorder(),
                ),
                onChanged: (String value) {
                  if (value.length == 1 && index < 5) {
                    FocusScope.of(context).nextFocus();
                  }
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 40.0),
        Align(
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "لم تستقبل الرمز ؟",
                  style: CustomTextStyles.bodyLargeff5b5b5e,
                ),
                TextSpan(
                  text: "   اعادة ارسال الرمز",
                  style: CustomTextStyles.bodyLargeff6a1079,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
