
import 'package:cloudyapp/constants/colors.dart';
import 'package:cloudyapp/widgets/content_title.dart';
import 'package:cloudyapp/widgets/time_display.dart';
import 'package:cloudyapp/widgets/tutorial_btn.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //appbar
            // Padding(
            //   padding: const EdgeInsets.symmetric(
            //     vertical: 10,
            //     horizontal: 35,
            //   ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(
            //         "Home",
            //         style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.w500,
            //             letterSpacing: 1),
            //       ),
            //       Icon(
            //         Icons.more_vert,
            //         size: 30,
            //       ),
            //     ],
            //   ),
            // ),
            //home_image
            Padding(
              padding: const EdgeInsets.only(
                left: 35,
                right: 35,
                top: 20,
                bottom: 20,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  "assets/images/image_1.png",
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //Tutorial button
            TutorialButton(
              padInt: 35,
            ),
            //where to get
            ContentTitle(
              title: "Where to get clients for website design",
              fontSize: 23,
              horpad: 35,
            ),
            //time
            TimeDisplay(
              time: 2,
              timeDetail: "days ago",
              horPad: 35,
            ),
            //news
            ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (() {
                      Navigator.pushNamed(context, '/detail_page');
                    }),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 35,
                      ),
                      child: Container(
                        child: Column(
                          children: [
                            Divider(
                              thickness: 0.5,
                              color: primaryColor,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //content_image
                                  Expanded(
                                    flex: 3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(13.0),
                                      child: Image.asset(
                                        "assets/images/image_1.png",
                                        height: 80,
                                        width: 80,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 9,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TutorialButton(
                                          padInt: 20,
                                        ),
                                        ContentTitle(
                                          title:
                                              "What skills are required to become designer",
                                          fontSize: 16,
                                          horpad: 20,
                                        ),
                                        TimeDisplay(
                                          time: 34,
                                          timeDetail: "min ago",
                                          horPad: 20,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
