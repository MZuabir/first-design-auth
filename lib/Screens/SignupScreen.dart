import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/Constants/constant.dart';
import 'package:login/Screens/loginScreen.dart';
import 'package:login/widgets/AlreadyHaveAnAccount.dart';
import 'package:login/widgets/RoundedPasswordField.dart';
import 'package:login/widgets/RoundedTextField.dart';
import 'package:login/widgets/Rounded_Button.dart';
import '../widgets/OrDivider.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/signup_top.png',
                width: 150,
              )),
          Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_bottom.png',
                width: 80,
              )),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Signup',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
                SvgPicture.asset(
                  'assets/icons/signup.svg',
                  height: 350,
                ),
                RoundedTextField(
                  hintText: 'Your Email',
                  icon: Icons.person,
                  onchanged: (value) {},
                ),
                RoundedPasswordField(onchanged: (value) {}),
                Rounded_Button(text: 'Signup', press: () {}),
                const SizedBox(
                  height: 10,
                ),
                AlreadyHaveAnAccountCheck(
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  login: false,
                ),
                OrDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialAvatar(
                        iconSrc: 'assets/icons/facebook.svg', press: () {}),
                    const SizedBox(
                      width: 20,
                    ),
                    SocialAvatar(
                        iconSrc: 'assets/icons/twitter.svg', press: () {}),
                    const SizedBox(
                      width: 20,
                    ),
                    SocialAvatar(
                        iconSrc: 'assets/icons/google-plus.svg', press: () {}),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SocialAvatar extends StatelessWidget {
  final String iconSrc;
  final VoidCallback? press;

  SocialAvatar({
    Key? key,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryColor),
            color: kPrimaryLight,
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconSrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
