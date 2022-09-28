import 'package:flutter/material.dart';
import 'package:cloudyapp/constants/colors.dart';

class ContentTitle extends StatelessWidget {
  late String title;
  late int fontSize;
  late double horpad;
  ContentTitle({
    Key? key,
    required this.title,
    required this.fontSize,
    required this.horpad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horpad, vertical: 10),
      child: Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: primaryColor,
          fontSize: fontSize.toDouble(),
          fontWeight: FontWeight.w600,
          height: 1.1,
        ),
      ),
    );
  }
}
