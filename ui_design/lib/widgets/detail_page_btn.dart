import 'package:cloudyapp/constants/colors.dart';
import 'package:flutter/material.dart';
class DetailPageBtn extends StatelessWidget {
  late IconData iconName;
  DetailPageBtn({
    Key? key,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(22),
      color: primaryColor,
      elevation: 3,
      child: CircleAvatar(
        radius: 22,
        backgroundColor: secondaryColor,
        child: IconButton(
          icon: Icon(
            iconName,
            color: textSecondary,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}