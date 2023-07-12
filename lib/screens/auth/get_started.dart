import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:grabby/colors/colors.dart';
import 'package:grabby/components/widgets.dart';
import 'package:grabby/screens/auth/sign_in.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
          Spacer(),
          Image.asset(
            'assets/images/logo.png',
            height: 94,
            width: 73,
          ),
          SizedBox(height: 12),
          SizedBox(
            width: 183,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Let’s make shopping ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.55,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'fun ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.55,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'and ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.55,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: 'easy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.55,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Text(
                  'Welcome to Grabby',
                  textAlign: TextAlign.center,
                  style: Get.textTheme.displayLarge,
                ),
                SizedBox(height: 12),
                Text(
                  'The best online shopping application in  Nigeria',
                  textAlign: TextAlign.center,
                  style: Get.textTheme.bodySmall,
                ),
                SizedBox(height: 40),
                SizedBox(
                    width: Get.width * 0.85,
                    child: MainButton(onPressed: () {}, text: 'Log in')),
                SizedBox(height: 10),
                SizedBox(
                  width: Get.width * 0.85,
                  child: MainButton.outline(
                      onPressed: () {
                        Get.bottomSheet(
                          isDismissible: false,
                          barrierColor: Colors.transparent,
                          isScrollControlled: true,
                          SignInSheet(),
                        );
                      },
                      text: 'Sign up'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
