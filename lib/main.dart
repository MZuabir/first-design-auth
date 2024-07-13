import 'package:flutter/material.dart';
import 'package:login/Screens/SignupScreen.dart';
import 'package:login/Screens/loginScreen.dart';
import 'Screens/welcome_screen.dart';
import 'Constants/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}
