import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabby/colors/colors.dart';
import 'package:grabby/components/textfield.dart';
import 'package:grabby/components/widgets.dart';
import 'package:grabby/screens/auth/create_acct.dart';
import 'package:grabby/screens/auth/forgot_pwd.dart';

class SignInSheet extends StatefulWidget {
  SignInSheet({
    super.key,
  });

  @override
  State<SignInSheet> createState() => _SignInSheetState();
}

class _SignInSheetState extends State<SignInSheet> {
  final email = TextEditingController();

  final pwd = TextEditingController();

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 20,
                width: 20,
                child: IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(
                      Icons.close,
                      color: Colors.black,
                    )),
              ),
            ),
            Text(
              'Sign in',
              textAlign: TextAlign.center,
              style: Get.textTheme.displayLarge,
            ),
            SizedBox(height: 12),
            Text('Welcome back, log in your details to continue',
                style: Get.textTheme.bodySmall!.copyWith(
                  color: Color(0xFF797B8B),
                )),
            SizedBox(height: 28),
            CustomField.label(
              label: 'Email Address or Phone Number',
              controller: email,
              hintText: 'Enter your email address or phone number',
            ),
            SizedBox(height: 10),
            CustomField.label(
              label: 'Password',
              controller: pwd,
              hintText: '***********************',
              onTap: () => setState(() {
                isVisible = !isVisible;
              }),
              obscureText: isVisible,
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                  Get.bottomSheet(
                    isDismissible: false,
                    barrierColor: Colors.transparent,
                    // isScrollControlled: true,
                    ForgotPwd(),
                  );
                },
                child: Text('Forget Password?',
                    style: Get.textTheme.bodySmall!.copyWith(
                      color: Colors.black,
                    )),
              ),
            ),
            SizedBox(height: 28),
            SizedBox(
                width: Get.width * 0.85,
                child: MainButton(onPressed: () {}, text: 'Log in')),
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
            SizedBox(height: 14),
            divideLine(),
            SizedBox(height: 10),
            iconButton(
              text: 'Continue with Google',
              icon: 'assets/images/g_icon.png',
              onPressed: () {},
            ),
            SizedBox(height: 10),
            iconButton(
              text: 'Continue with Facebook',
              icon: 'assets/images/f_icon.png',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
