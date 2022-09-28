import 'package:flutter/material.dart';
import 'package:cloudyapp/constants/colors.dart';
class TimeDisplay extends StatelessWidget {
  late int time;
  late String timeDetail;
  late double horPad;
  TimeDisplay(
      {Key? key,
      required this.time,
      required this.timeDetail,
      required this.horPad})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: horPad,
        right: horPad,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.access_time,
            size: 15,
            color: primaryColor,
          ),
          Text(
            "  ${time.toString()} $timeDetail",
            style: TextStyle(color: primaryColor, fontSize: 12),
          ),
        ],
      ),
    );
  }
}