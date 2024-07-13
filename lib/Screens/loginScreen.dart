import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/Screens/SignupScreen.dart';
import 'package:login/widgets/Rounded_Button.dart';
import '../widgets/RoundedPasswordField.dart';
import '../Constants/constant.dart';
import '../widgets/RoundedTextField.dart';
import '../widgets/AlreadyHaveAnAccount.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/images/login_bottom.png',
              width: 150,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/main_top.png',
              width: 150,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                SvgPicture.asset(
                  'assets/icons/login.svg',
                  height: 300,
                ),
                const SizedBox(
                  height: 20,
                ),
                RoundedTextField(
                    hintText: 'Your Email',
                    icon: Icons.person,
                    onchanged: (value) {}),
                RoundedPasswordField(onchanged: (valu) {}),
                const SizedBox(
                  height: 20,
                ),
                Rounded_Button(text: 'Login', press: () {}),
                const SizedBox(
                  height: 10,
                ),
                AlreadyHaveAnAccountCheck(press: () {
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
