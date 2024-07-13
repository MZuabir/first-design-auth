import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/Constants/constant.dart';
import 'package:login/Screens/SignupScreen.dart';
import 'package:login/Screens/loginScreen.dart';
import '../widgets/Rounded_Button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/images/main_bottom.png',
              width: 70,
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              'assets/images/main_top.png',
              width: 150,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Welcome To App',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kPrimaryColor),
                ),
                const SizedBox(
                  height: 50,
                ),
                SvgPicture.asset(
                  'assets/icons/chat.svg',
                  height: 350,
                ),
                const SizedBox(
                  height: 40,
                ),
                Rounded_Button(
                    text: 'Login',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    }),
                const SizedBox(
                  height: 20,
                ),
                Rounded_Button(
                    text: 'Signup',
                    color: kPrimaryLight,
                    textColor: Colors.black,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
