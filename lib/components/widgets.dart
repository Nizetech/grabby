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
      width: Get.width,
      height: 54,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            side: BorderSide(
                color: isOutline ? AppColors.mainColor : Colors.white,
                width: 2),
            backgroundColor: isOutline ? Colors.white : AppColors.mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
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

Widget iconButton({
  required String text,
  required String icon,
  required VoidCallback onPressed,
}) =>
    SizedBox(
      width: Get.width * 0.85,
      height: 54,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Color(0xFFECEEF1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 24,
              width: 24,
            ),
            SizedBox(width: 10),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
Widget divideLine() => Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child: SizedBox(
          height: 1,
          child: Divider(
            color: AppColors.grey,
          ),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Text(
            'Or',
            style: TextStyle(
              color: Color(0xFFBFBEBE),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
            child: SizedBox(
          height: 1,
          child: Divider(
            color: AppColors.grey,
          ),
        )),
      ],
    );
