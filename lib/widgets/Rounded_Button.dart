import 'package:flutter/material.dart';
import '../Constants/constant.dart';

class Rounded_Button extends StatelessWidget {
  final String text;
  final VoidCallback? press;
  final Color color, textColor;

  Rounded_Button({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.all(18),
              foregroundColor: textColor,
              backgroundColor: color),
          child: Text(text),
          onPressed: press,
        ),
      ),
    );
  }
}
