import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/components/custom_button.dart';
import 'package:food_delivery_app/components/custom_textfield.dart';
import 'package:food_delivery_app/screen/auth/login_screen.dart';
import 'package:food_delivery_app/screen/auth/otp_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 64),
            Text(
              'Sign Up',
              style: TextStyle(
                color: Tcolor.primayText,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              'Add yout details to sign up',
              style: TextStyle(
                color: Tcolor.secondaryText,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 25),
            CustomTextfield(
              hintText: 'Name',
              controller: nameController,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            CustomTextfield(
              hintText: 'Email',
              controller: emailController,
            ),
            const SizedBox(height: 20),
            CustomTextfield(
              hintText: 'Mobile No',
              controller: phoneController,
            ),
            const SizedBox(height: 20),
            CustomTextfield(
              hintText: 'Address',
              controller: addressController,
            ),
            const SizedBox(height: 20),
            CustomTextfield(
              hintText: 'Password',
              controller: passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 20),
            CustomTextfield(
              hintText: 'Confirm Password',
              controller: confirmPasswordController,
              obscureText: true,
            ),
            const SizedBox(height: 25),
            CustomButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OTPScreen(),
                    ),
                  );
                },
                title: 'Sign Up'),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Already have an acount? ',
                    style: TextStyle(
                      color: Tcolor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Tcolor.primary,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
