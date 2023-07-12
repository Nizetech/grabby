import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabby/colors/colors.dart';
import 'package:grabby/components/textfield.dart';
import 'package:grabby/components/widgets.dart';
import 'package:grabby/screens/auth/create_acct.dart';

class ForgotPwd extends StatelessWidget {
  ForgotPwd({super.key});
  final email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 370,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              height: 20,
              width: 30,
              child: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                  )),
            ),
          ),
          Text(
            'Forget Password',
            textAlign: TextAlign.center,
            style: Get.textTheme.displayLarge,
          ),
          SizedBox(height: 12),
          Text(
              'Fill in your email address or phone number and we will send you a password reset link',
              style: Get.textTheme.bodySmall!.copyWith(
                color: Color(0xFF797B8B),
              )),
          SizedBox(height: 28),
          CustomField.label(
            label: 'Email or Phone number',
            controller: email,
            hintText: 'Enter your address or phone number',
          ),
          SizedBox(height: 28),
          SizedBox(
              width: Get.width * 0.85,
              child: MainButton(onPressed: () {}, text: 'Send')),
          SizedBox(height: 12),
          Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Don’t have an account?',
                    style: TextStyle(
                      color: Color(0xFF797B8B),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: ' Create one',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.back();
                        Get.bottomSheet(
                          isDismissible: false,
                          barrierColor: Colors.transparent,
                          isScrollControlled: true,
                          CreateAccount(),
                        );
                      },
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
