import 'package:flutter/material.dart';
import 'package:cloudyapp/constants/colors.dart';

class TutorialButton extends StatefulWidget {
  double padInt;
  TutorialButton({
    Key? key,
    required this.padInt,
  }) : super(key: key);

  @override
  State<TutorialButton> createState() => _TutorialButtonState();
}

class _TutorialButtonState extends State<TutorialButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: widget.padInt,
      ),
      child: Container(
        height: 29,
        width: 120,
        child: TextButton(
            onPressed: (() {}),
            style: TextButton.styleFrom(
              backgroundColor: secondaryColor.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  18.0,
                ),
              ),
            ),
            child: Center(
              child: Text(
                'Tutorial',
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )),
      ),
    );
  }
}
