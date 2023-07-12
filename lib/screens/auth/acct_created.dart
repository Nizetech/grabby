import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabby/components/widgets.dart';

class AccountCreated extends StatelessWidget {
  const AccountCreated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Spacer(),
            Image.asset('assets/images/rocket_img.png'),
            Text(
              'You are ready\n for takeoff',
              textAlign: TextAlign.center,
              style: Get.textTheme.displayLarge,
            ),
            SizedBox(height: 12),
            Text('Account created successfully.',
                style: Get.textTheme.bodySmall!.copyWith(
                  color: Color(0xFF797B8B),
                )),
            Spacer(),
            MainButton(onPressed: () {}, text: 'Continue'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
