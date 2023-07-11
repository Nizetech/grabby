import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabby/colors/colors.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool isOutline;
  const MainButton({
    super.key,
    required this.onPressed,
    required this.text,
  }) : isOutline = false;
  const MainButton.outline({
    super.key,
    required this.onPressed,
    required this.text,
  }) : isOutline = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.85,
      height: 54,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            side: BorderSide(
                color: isOutline ? AppColors.mainColor : Colors.white,
                width: 2),
            backgroundColor: isOutline ? Colors.white : AppColors.mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Get.textTheme.bodyMedium!.copyWith(
                color: isOutline ? AppColors.mainColor : Colors.white),
          )),
    );
  }
}
