import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:grabby/colors/colors.dart';
import 'package:grabby/screens/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grabby',
      theme: ThemeData(
        fontFamily: 'Poppins',
      
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.mainColor,
        ),
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            color: Color(0xFF2878D1),
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            color: Color(0xFF333333),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          bodySmall: const TextStyle(
            color: Color(0xFF333333),
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      home: const Onboarding(),
    );
  }
}
