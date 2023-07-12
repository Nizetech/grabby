import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabby/components/widgets.dart';
import 'package:grabby/screens/auth/acct_created.dart';

class VerifiedScreen extends StatelessWidget {
  const VerifiedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Get.height * 0.1),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Don\'t worry, we\'ve got your back.',
                  textAlign: TextAlign.center,
                  style: Get.textTheme.displayLarge,
                ),
              ),
              SizedBox(height: 12),
              Text('Your password reset link has been sent to your email.',
                  style: Get.textTheme.bodySmall!.copyWith(
                    color: Colors.black,
                  )),
              SizedBox(height: 28),
              Image.asset('assets/images/verify_img.png'),
              SizedBox(height: 20),
              SizedBox(
                  width: double.infinity,
                  child: MainButton(
                      onPressed: () => Get.to(AccountCreated()),
                      text: 'Continue')),
            ],
          ),
        ),
      ),
    );
  }
}
