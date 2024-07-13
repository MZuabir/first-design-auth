import 'package:flutter/material.dart';
import '../Constants/constant.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Row(
        children: [
          BuildDivider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'OR',
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
            ),
          ),
          BuildDivider(),
        ],
      ),
    );
  }
}

 Expanded BuildDivider() {
    return const Expanded(
      child: Divider(
        height: 1.5,
        color: Color(0xFFD9D9D9),
      ),
    );
  }
