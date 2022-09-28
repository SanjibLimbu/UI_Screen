import 'package:cloudyapp/constants/colors.dart';
import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 26,
      left: 26,
      child: GestureDetector(
        onTap: (() {
          Navigator.pushNamed(context, "/home");
        }),
        child: Icon(Icons.arrow_back, color: textSecondary),
      ),
    );
  }
}