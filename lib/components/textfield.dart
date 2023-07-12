import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import 'package:grabby/colors/colors.dart';

class CustomField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final bool isPwd;
  final VoidCallback? onTap;
  final String? label;
  const CustomField({
    super.key,
    required this.controller,
    required this.hintText,
    this.onTap,
  })  : obscureText = false,
        isPwd = false,
        this.label = null;
  const CustomField.pwd({
    super.key,
    required this.controller,
    required this.hintText,
    this.onTap,
    this.obscureText = true,
  })  : isPwd = true,
        this.label = null;
  const CustomField.label({
    super.key,
    required this.controller,
    required this.hintText,
    this.onTap,
    this.label,
    this.obscureText = false,
  }) : isPwd = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(label!,
              style: Get.textTheme.bodySmall!.copyWith(
                color: Colors.black,
              )),
        if (label != null) SizedBox(height: 10),
        TextField(
          controller: controller,
          obscureText: obscureText,
          obscuringCharacter: '*',
          style: TextStyle(
            color: Color(0xFFBFBEBE),
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: onTap,
              icon: !isPwd
                  ? Offstage()
                  : IconButton(
                      onPressed: onTap,
                      icon: Icon(
                        !obscureText ? IconlyLight.hide : IconlyLight.show,
                        color: AppColors.grey,
                      ),
                    ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.grey,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.grey,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.grey,
                width: 1,
              ),
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Color(0xFFBFBEBE),
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
            contentPadding: EdgeInsets.only(
              left: 24,
            ),
          ),
        ),
      ],
    );
  }
}
