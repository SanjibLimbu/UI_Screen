import 'package:cloudyapp/constants/colors.dart';
import 'package:flutter/material.dart';

class DetailBrian extends StatelessWidget {
  const DetailBrian({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: textSecondary,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(45, 45),
                  backgroundColor: Colors.grey.withOpacity(0.1),
                  padding: EdgeInsets.all(0),
                  shape: CircleBorder()),
              onPressed: () {},
              child: const Text(
                '18s',
                style: TextStyle(fontSize: 14, color: textSecondary),
              ),
            ),
          ),

          // This button presents popup menu items.
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/images/image_1.png",
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width * 1,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Modeling Training",
                            style: TextStyle(
                              fontSize: 20,
                              color: textSecondary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 55,
                            ),
                            child: Container(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 1,
                                child: Text(
                                  "In this game, you are required to create the specific models by offered components in limited time. Good luck!",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: textSecondary.withOpacity(0.7),
                                      // fontWeight: FontWeight.w700,
                                      height: 1.5),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 200, 196, 196),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.3),
                                    shape: BoxShape.circle,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            height: 25,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                topLeft: Radius.circular(25),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Joined Trainers",
                    style: TextStyle(
                        // fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 9, 35, 55)),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    "Invite Friends",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 112, 111, 111)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Expanded(
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      margin: EdgeInsets.only(bottom: 35),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/image_1.png"),
                            radius: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 17.0),
                            child: Container(
                              height: 40,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Myrtle Hill",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(255, 16, 16, 16)),
                                  ),
                                  Text(
                                    "EXPERT TRAINER",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromARGB(255, 112, 111, 111)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            "500 CDTS",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 110, 39, 216),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
