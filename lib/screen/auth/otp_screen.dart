import 'package:flutter/material.dart';
import 'package:food_delivery_app/common/color_extension.dart';
import 'package:food_delivery_app/components/custom_button.dart';
import 'package:food_delivery_app/screen/auth/new_password_screen.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 64),
              Text(
                'We have sent an OTP to you Mobile No.',
                style: TextStyle(
                  color: Tcolor.primayText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              Text(
                'Please check your mobile number 071******12 continue to reset your password',
                style: TextStyle(
                  color: Tcolor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 60),
              SizedBox(
                height: 60,
                child: OtpPinField(
                  key: _otpPinFieldController,
                  autoFillEnable: true,
                  textInputAction: TextInputAction.done,
                  onSubmit: (text) {
                    FocusScope.of(context).requestFocus(FocusNode());
                    print('Entered pin is $text');
                  },
                  onChange: (text) {
                    print('Enter on change pin is $text');
                  },
                  onCodeChanged: (code) {
                    print('onCodeChanged  is $code');
                  },
                  otpPinFieldStyle: OtpPinFieldStyle(
                      showHintText: false,
                      activeFieldBorderColor: Colors.transparent,
                      activeFieldBackgroundColor: Tcolor.textfield,
                      defaultFieldBorderColor: Colors.transparent,
                      defaultFieldBackgroundColor: Tcolor.textfield),
                  maxLength: 4,
                  showCursor: true,
                  cursorColor: Tcolor.palceholder,
                  showCustomKeyboard: false,
                  cursorWidth: 3,
                  keyboardType: TextInputType.number,
                  mainAxisAlignment: MainAxisAlignment.center,
                  otpPinFieldDecoration:
                      OtpPinFieldDecoration.defaultPinBoxDecoration,
                ),
              ),
              const SizedBox(height: 40),
              CustomButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  title: 'Next'),
              const SizedBox(height: 4),
              TextButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const SignupScreen(),
                  //   ),
                  // );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Didn\'t recieve any code? ',
                      style: TextStyle(
                        color: Tcolor.secondaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Click here',
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
      ),
    );
  }
}
