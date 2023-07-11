import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:grabby/colors/colors.dart';
import 'package:grabby/components/widgets.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        children: [
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
                MainButton(onPressed: () {}, text: 'Log in')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
