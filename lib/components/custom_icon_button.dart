import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';

class CustomIconButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  final String icon;
  final Color color;

  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(28)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              icon,
              width: 20,
              height: 20,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                color: Tcolor.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
