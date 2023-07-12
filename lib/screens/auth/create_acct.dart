import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grabby/colors/colors.dart';
import 'package:grabby/components/textfield.dart';
import 'package:grabby/components/widgets.dart';
import 'package:grabby/screens/auth/verify.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({
    super.key,
  });

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final email = TextEditingController();
  final pwd = TextEditingController();
  final phone = TextEditingController();
  bool isVisible = false;
  bool isAgreed = false;
  bool isAgreed2 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: Get.height * .93,
      ),
      padding: EdgeInsets.all(25),
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
              width: 33,
              child: IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                  )),
            ),
          ),
          Text(
            'Create an Account',
            textAlign: TextAlign.center,
            style: Get.textTheme.displayLarge,
          ),
          SizedBox(height: 12),
          Text('To create an account, fill in your details',
              style: Get.textTheme.bodySmall!.copyWith(
                color: Color(0xFF797B8B),
              )),
          SizedBox(height: 28),
          Text(
            'Full name',
            style: Get.textTheme.bodySmall!.copyWith(
              color: Colors.black,
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: CustomField(
                  controller: firstName,
                  hintText: 'First name',
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: CustomField(
                  controller: lastName,
                  hintText: 'Last name',
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          CustomField.label(
            label: 'Email',
            controller: email,
            hintText: 'Eg mem@gmail.com',
          ),
          SizedBox(height: 12),
          CustomField.label(
            label: 'Phone number',
            controller: phone,
            hintText: 'Eg 08012345678',
          ),
          SizedBox(height: 12),
          Text('Password',
              style: Get.textTheme.bodySmall!.copyWith(
                color: Colors.black,
              )),
          SizedBox(height: 12),
          CustomField.pwd(
            controller: phone,
            hintText: '***********',
            onTap: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            obscureText: isVisible,
          ),
          SizedBox(height: 12),
          check(
            onChange: (value) {
              setState(() {
                isAgreed = !isAgreed;
              });
            },
            text: 'Accept terms and condition',
            value: isAgreed,
          ),
          SizedBox(height: 12),
          check(
            onChange: (value) {
              setState(() {
                isAgreed2 = !isAgreed2;
              });
            },
            text: 'I want to receive newsletters from Grabby',
            value: isAgreed2,
          ),
          SizedBox(height: 25),
          SizedBox(
            width: Get.width * 0.85,
            child: MainButton(
                onPressed: () => Get.to(VerifiedScreen()), text: 'Sign up'),
          ),
          SizedBox(height: 12),
          Center(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Have an account?',
                    style: TextStyle(
                      color: Color(0xFF797B8B),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: ' Log in',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.back();
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
      )),
    );
  }
}

Widget check({
  required Function(bool?) onChange,
  required String text,
  required bool value,
}) =>
    Row(children: [
      SizedBox(
        height: 20,
        width: 20,
        child: Checkbox(
            value: value,
            side: BorderSide(
              color: AppColors.grey,
              width: 1,
            ),
            fillColor: MaterialStateProperty.all(Colors.blue),
            checkColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onChanged: onChange),
      ),
      SizedBox(width: 6),
      Text(
        text,
        style: TextStyle(
          color: Color(0xFF333333),
          fontSize: 10,
          fontWeight: FontWeight.w400,
        ),
      ),
    ]);
