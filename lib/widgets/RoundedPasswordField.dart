import 'package:flutter/material.dart';
import '../Constants/constant.dart';
import '../widgets/textFieldContainer.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged onchanged;

  const RoundedPasswordField({
    Key? key,
    required this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      onChanged: onchanged,
      obscureText: true,
      decoration: const InputDecoration(
          iconColor: kPrimaryColor,
          suffixIconColor: kPrimaryColor,
          border: InputBorder.none,
          hintText: 'Password',
          icon: Icon(Icons.lock),
          suffixIcon: Icon(Icons.visibility_rounded)),
    ));
  }
}
