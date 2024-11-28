import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  const CustomTextfield({
    super.key,
    required this.hintText,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      decoration: BoxDecoration(
        color: Tcolor.textfield,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        autocorrect: false,
        controller: controller,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Tcolor.palceholder,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
