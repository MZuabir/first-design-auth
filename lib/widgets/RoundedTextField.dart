import 'package:flutter/material.dart';
import '../widgets/textFieldContainer.dart';
import '../Constants/constant.dart';

class RoundedTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onchanged;

  RoundedTextField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onchanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: kPrimaryColor,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color: kPrimaryColor),
            border: InputBorder.none),
      ),
    );
  }
}
