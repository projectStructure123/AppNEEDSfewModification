import 'package:flutter/material.dart';

import 'custom_text_style.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final TextInputType textInputType;
  final TextEditingController controller;
  final bool obscureText;
  final bool enabled;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextAlign? textAlign;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;

  CustomTextField({
    this.label,
    required this.controller,
    required this.textInputType,
    this.obscureText = false,
    this.enabled = true,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.onChanged,
    this.hint,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text('${label??''}', style: CustomTextStyles.bodyLarge18.copyWith(color:Colors.black,fontSize:20.0),textDirection: TextDirection.rtl),
        TextFormField(
          enabled: enabled,
          onChanged: onChanged,
          // onChanged: onChanged,
          textAlign: textAlign as TextAlign,
          controller: controller,
          obscureText: obscureText,
          keyboardType: textInputType,
          decoration: InputDecoration(

            hintText: hint,
            hintStyle: CustomTextStyles.bodyLarge18,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,

            contentPadding: const EdgeInsets.all(8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xFFBAC2C7),
                width: 0.5,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xFFBAC2C7),
                width: 0.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xFFC043D5),
                width: 1,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: Colors.red,
                width: 1,
              ),
            ),
          ),
          validator: validator,
        ),
        // SizedBox(height: 20),
      ],
    );
  }
} //end of widget

class CustomDropDownField extends StatelessWidget {
  final String? label;
  final String hint;
  final List<String> options;
  final String? selectedOption;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;

  CustomDropDownField({
    this.label,
    required this.hint,
    required this.options,
    this.selectedOption,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          '${label ?? ''}',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
          ),
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
        ),
        DropdownButtonFormField<String>(

          value: selectedOption,
          onChanged: onChanged,
          validator: validator,
          items: options.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
          decoration: InputDecoration(

            hintText: hint,
            contentPadding: const EdgeInsets.all(8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(
                color: Color(0xFFBAC2C7),
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: Color(0xFFBAC2C7),
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: Color(0xFFBAC2C7),
                width: 1,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: Colors.red,
                width: 1,
              ),
            ),
          ),
        ),
        // SizedBox(height: ),
      ],
    );
  }
}