import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/components/custom_button.dart';
import 'package:food_delivery_app/components/custom_icon_button.dart';
import 'package:food_delivery_app/components/custom_textfield.dart';
import 'package:food_delivery_app/screen/auth/reset_password_screen.dart';
import 'package:food_delivery_app/screen/auth/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              'Login',
              style: TextStyle(
                color: Tcolor.primayText,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              'Add your login details',
              style: TextStyle(
                color: Tcolor.secondaryText,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 25),
            CustomTextfield(
              hintText: 'Your Email',
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            CustomTextfield(
              hintText: 'Your Password',
              controller: passwordController,
              obscureText: true,
            ),
            const SizedBox(height: 25),
            CustomButton(onPressed: () {}, title: 'Login'),
            const SizedBox(height: 4),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResetPasswordScreen(),
                  ),
                );
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Tcolor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'or Login With',
              style: TextStyle(
                color: Tcolor.secondaryText,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 30),
            CustomIconButton(
              onPressed: () {},
              title: 'Login with Facebook',
              color: const Color(0xff367FC0),
              icon: 'assets/images/facebook_logo.png',
            ),
            const SizedBox(height: 25),
            CustomIconButton(
                onPressed: () {},
                title: 'Login with Google',
                color: const Color(0xffDD4B39),
                icon: 'assets/images/google_logo.png'),
            const SizedBox(height: 80),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
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
                    'Sign Up',
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
