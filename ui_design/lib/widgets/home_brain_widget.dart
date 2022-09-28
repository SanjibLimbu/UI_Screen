import 'package:cloudyapp/constants/colors.dart';

import 'package:cloudyapp/widgets/profile_pic_section_brain.dart';
import 'package:cloudyapp/widgets/training_card_brain.dart';
import 'package:flutter/material.dart';

class HomeBrainWidget extends StatelessWidget {
  const HomeBrainWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color.fromARGB(255, 55, 50, 126),
            Color.fromARGB(255, 58, 54, 123),
            Color.fromARGB(255, 83, 78, 183),
            Color.fromARGB(255, 69, 66, 121),
            Color.fromARGB(255, 56, 51, 117),
            Color.fromARGB(255, 50, 45, 142),
            Color.fromARGB(255, 44, 40, 134),
            Color.fromARGB(255, 49, 45, 103),
          ],
          tileMode: TileMode.mirror,
        )),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 70),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    color: textSecondary,
                    fontSize: 27,
                    letterSpacing: 1.2,

                    // fontWeight: FontWeight.w500
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 25),
                  child: Opacity(
                    opacity: 0.5,
                    child: Text(
                      "Good job Frederick! You are in the training 5 days in a row. keep it up to the next level.",
                      style: TextStyle(
                        fontSize: 15,
                        color: textSecondary,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),

                //profile_pic
                ProfilePicSection(),

                //continue your training
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Continue Your Training",
                        style: TextStyle(
                          color: textSecondary,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 13,
                            color: textSecondary,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //training card
                Row(
                  children: [
                    TrainCard(
                      image: "assets/images/puzzle2.png",
                      title: 'New Puzzles',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TrainCard(
                      image: "assets/images/brain2.png",
                      title: 'Memory Train',
                    )
                  ],
                ),

                //learning Room
                SizedBox(
                  height: 30,
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 67, 91, 223),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Opacity(
                                opacity: 0.5,
                                child: Text(
                                  "LEARNING ROOM",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: textSecondary,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                              Image.asset(
                                "assets/images/question.png",
                                height: 20,
                                width: 20,
                                fit: BoxFit.cover,
                                color: Color.fromARGB(255, 166, 163, 163),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 8,
                                child: Text(
                                  "How to Get More Training Game Credits?",
                                  style: TextStyle(
                                      color: textSecondary,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.5,
                                      height: 1.5),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: SizedBox(),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundColor:
                                    Color.fromARGB(255, 55, 50, 126),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/image_1.png"),
                                  radius: 20,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Jean Graves",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: textSecondary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Expanded(
                                child: Image.asset(
                                  "assets/images/puzzle2.png",
                                  height: 70,
                                  width: 70,
                                  fit: BoxFit.contain,
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
