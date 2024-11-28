import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

enum CustomButtonType { bgPrimary, textPrimary }

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final CustomButtonType type;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.type = CustomButtonType.bgPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          height: 66,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: type == CustomButtonType.bgPrimary
                  ? null
                  : Border.all(color: Tcolor.primary, width: 1),
              color: type == CustomButtonType.bgPrimary
                  ? Tcolor.primary
                  : Tcolor.white,
              borderRadius: BorderRadius.circular(28)),
          child: Text(
            title,
            style: TextStyle(
              color: type == CustomButtonType.bgPrimary
                  ? Tcolor.white
                  : Tcolor.primary,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}
