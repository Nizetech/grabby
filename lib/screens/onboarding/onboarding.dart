import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabby/components/widgets.dart';
import 'package:grabby/screens/auth/get_started.dart';
import 'package:grabby/utils/onboard_data.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int currentIndex = 0;
  @override
  void initState() {
    controller = TabController(length: 3, vsync: this)
      ..addListener(() {
        setState(() {
          currentIndex = controller.index;
        });
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Column(
          children: [
            Expanded(
              child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: controller,
                  children: [
                ...onboardData
                    .map(
                      (data) => Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(data['background']),
                          ),
                        ),
                        child: SafeArea(
                          child: Column(
                            children: [
                              SizedBox(height: Get.height * 0.1),
                              Image.asset(
                                data['image'],
                                height: 300,
                              ),
                              SizedBox(height: 40),
                              Text(
                                data['title'],
                                textAlign: TextAlign.center,
                                style: Get.textTheme.displayLarge,
                              ),
                              SizedBox(height: 12),
                              Text(
                                data['subtitle'],
                                textAlign: TextAlign.center,
                                style: Get.textTheme.bodyMedium!.copyWith(
                                  color: Color(0xFF797B8B),
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ]),
            ),
          ],
        ),
        Positioned(
          top: 50,
          right: 20,
          child: Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () => Get.to(GetStarted()),
              child: Text(
                'Skip',
                textAlign: TextAlign.right,
                style: Get.textTheme.bodyMedium,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Row(
                  children: List.generate(onboardData.length,
                      (index) => buildDot(index, currentIndex)),
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: Get.width * 0.85,
                  child: MainButton(
                    text: 'Next',
                    onPressed: () {
                      if (currentIndex < 2) {
                        controller.animateTo(currentIndex + 1);
                      } else {
                        Get.to(GetStarted());
                      }
                    },
                  ),
                ),
                SizedBox(height: 30),
              ],
            ))
      ]),
    );
  }
}

Widget buildDot(
  int index,
  int currentIndex,
) =>
    Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: currentIndex == index ? 18 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: currentIndex == index ? Color(0xFF2878D1) : Color(0xFFD1D1D1),
        borderRadius: BorderRadius.circular(12),
      ),
    );
