import 'package:cloudyapp/constants/colors.dart';
import 'package:flutter/material.dart';

class ProfileChart extends StatelessWidget {
  const ProfileChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 25,
              left: 25,
              right: 25,
              bottom: 20,
            ),
            child: Column(
              children: [
                Profile(),
                Level(),
                Discription(),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 15,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: backgroundColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          right: 5,
                        ),
                        child: Text(
                          "YOUR PERFORMANCE",
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: backgroundColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.85,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Center(
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.85,
                          width: MediaQuery.of(context).size.width * 0.85,
                          decoration: ShapeDecoration(
                            color: primaryColor,
                            shape: CircleBorder(),
                          ),
                        ),
                      ),
                      SkillChart(
                        left: 150,
                        top: -50,
                        score: 830,
                        title: 'Memory',
                      ),
                      SkillChart(
                        left: 0,
                        top: 54,
                        score: 790,
                        title: 'Listening',
                      ),
                      SkillChart(
                        left: 300,
                        top: 60,
                        score: 640,
                        title: 'Analysis',
                      ),
                      SkillChart(
                        left: 50,
                        top: 240,
                        score: 390,
                        title: 'Maths',
                      ),
                      SkillChart(
                        left: 270,
                        top: 270,
                        score: 670,
                        title: 'Reading',
                      ),
                      // Center(
                      //   child: Container(
                      //     height: MediaQuery.of(context).size.width * 0.65,
                      //     width: MediaQuery.of(context).size.width * 0.65,
                      //     decoration: ShapeDecoration(
                      //       color: backgroundColor,
                      //       shape: CircleBorder(),
                      //     ),
                      //   ),
                      // ),
                      // Center(
                      //   child: Container(
                      //     height: MediaQuery.of(context).size.width * 0.45,
                      //     width: MediaQuery.of(context).size.width * 0.45,
                      //     decoration: ShapeDecoration(
                      //       color: primaryColor,
                      //       shape: CircleBorder(),
                      //     ),
                      //   ),
                      // ),
                      // Center(
                      //   child: CustomPaint(
                      //     size: Size(
                      //       MediaQuery.of(context).size.width * 0.6,
                      //       MediaQuery.of(context).size.width * 0.6,
                      //     ),
                      //     painter: ChartChipper1(),
                      //     // child: Container(
                      //     //   height: MediaQuery.of(context).size.width * 0.4,
                      //     //   width: MediaQuery.of(context).size.width * 0.4,
                      //     //   color: Colors.lightGreen,
                      //     // ),
                      //   ),
                      // ),
                      // Center(
                      //   child: Container(
                      //     height: MediaQuery.of(context).size.width * 0.2,
                      //     width: MediaQuery.of(context).size.width * 0.2,
                      //     decoration: ShapeDecoration(
                      //       color: textSecondary,
                      //       shape: CircleBorder(),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//individual_skill_chart
class SkillChart extends StatelessWidget {
  late double top;
  late double left;
  late String title;
  late int score;
  SkillChart({
    Key? key,
    required this.top,
    required this.left,
    required this.title,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              color: secondaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            score.toString(),
            style: TextStyle(
              color: textPrimary,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}


//discription for level

class Discription extends StatelessWidget {
  const Discription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        "Good job Sanjib! You have completed 28 games in 4 categories. You are better than 77% of total users in the community. Keep it up!",
        style: TextStyle(color: primaryColor, fontSize: 14),
      ),
    );
  }
}

//level
class Level extends StatelessWidget {
  const Level({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "LEVEL 23",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: LinearProgressIndicator(
            
              value: 0.8,
              minHeight: 25,
              valueColor: AlwaysStoppedAnimation(secondaryColor),
              backgroundColor: backgroundColor,
              
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          "LEVEL 24",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: primaryColor,
          ),
        ),
      ],
    );
  }
}

//profile
class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/image_1.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                ),
                child: Text(
                  "Sanjib Limbu",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),
            ],
          ),
          Positioned(
            top: 55,
            left: 80,
            child: Container(
              height: 35,
              width: 35,
              decoration: ShapeDecoration(
                color: textSecondary,
                shape: CircleBorder(),
              ),
              child: Icon(
                Icons.card_giftcard,
                color: secondaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//example from net
class ChartChipper1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double h = size.height;
    double w = size.width;
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(w * 0.7, h);
    path0.lineTo(size.width * 0.5166667, size.height * 0.3342857);
    path0.lineTo(size.width * 0.4183333, size.height * 0.5542857);
    path0.lineTo(size.width * 0.2825000, size.height * 0.5128571);
    path0.lineTo(size.width * 0.2416667, size.height * 0.3571429);
    path0.lineTo(size.width * 0.3525000, size.height * 0.1914286);

    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
