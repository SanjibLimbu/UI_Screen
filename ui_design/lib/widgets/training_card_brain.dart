import 'package:cloudyapp/constants/colors.dart';
import 'package:flutter/material.dart';

//training card
class TrainCard extends StatelessWidget {
  late String title;
  late String image;
  TrainCard({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 2,
        child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 48, 30, 130),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(
                  image,
                  height: 70,
                  width: 70,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: textSecondary,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "60% Done",
                  style: TextStyle(
                      color: secondaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                )
              ],
            )),
      ),
    );
  }
}