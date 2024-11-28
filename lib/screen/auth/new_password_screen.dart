import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/components/custom_button.dart';
import 'package:food_delivery_app/components/custom_textfield.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  TextEditingController confrimPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 64),
            Text(
              'New Password',
              style: TextStyle(
                color: Tcolor.primayText,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Please enter your new password',
              style: TextStyle(
                color: Tcolor.secondaryText,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
            CustomTextfield(
              hintText: 'New Password',
              controller: passwordController,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 25),
            CustomTextfield(
              hintText: 'Confirm Password',
              controller: confrimPasswordController,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 40),
            CustomButton(onPressed: () {}, title: 'Next'),
          ],
        ),
      ),
    );
  }
}
