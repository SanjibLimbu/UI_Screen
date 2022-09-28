import 'package:cloudyapp/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfilePicSection extends StatelessWidget {
  const ProfilePicSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 205, 203, 203).withOpacity(0.2),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 5,
                child: RichText(
                  maxLines: 2,
                  text: TextSpan(
                    text: "You are invited to challenge with Patrick for",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    children: [
                      TextSpan(
                        text: " Space Analysis",
                        style: TextStyle(
                            color: textPrimary,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            height: 1.5),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Color.fromARGB(255, 55, 50, 126),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/image_1.png"),
                    radius: 20,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 1.8,
            color: textSecondary.withOpacity(0.1),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "350 Credits Reward When Win the Game!",
            style: TextStyle(
              fontSize: 14,
              color: textSecondary,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}