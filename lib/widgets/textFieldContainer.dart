import 'package:flutter/material.dart';
import '../Constants/constant.dart';
class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
          color: kPrimaryLight, borderRadius: BorderRadius.circular(25)),
      child: child,
    );
  }
}
