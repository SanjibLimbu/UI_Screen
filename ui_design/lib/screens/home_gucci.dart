import 'package:flutter/material.dart';

class HomeGucci extends StatelessWidget {
  const HomeGucci({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff241434),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                top: 30,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/gucci_1.png",
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.4,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              "Gucci",
              style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 238, 235, 235),
                  letterSpacing: 1.1),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Bladdy-T, VANE, KSKV",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 238, 235, 235).withOpacity(
                  0.4,
                ),
                // letterSpacing: 1.1
              ),
            ),
            SizedBox(
              height: 25,
            ),
            // CustomPaint(
            //   size: Size(MediaQuery.of(context).size.width * 0.34,
            //       MediaQuery.of(context).size.width * 0.3),
            //   painter: PlayButton(),
            // ),

            // ClipPath(
            //   clipper: PlayButtonClip(),
            //   child: Container(
            //     height: 400,
            //     width: 200,
            //     color: Colors.red,
            //   ),
            // )
            // Padding(
            //   padding: const EdgeInsets.only(right: 15),
            //   child: Stack(
            //     clipBehavior: Clip.none,
            //     children: [

            //       Positioned(
            //         child: CircleAvatar(
            //           backgroundColor: Color.fromARGB(255, 47, 75, 214),
            //           radius: 60,
            //         ),
            //       ),
            //       Positioned(
            //         left: 8,
            //         top: 10,
            //         child: CircleAvatar(
            //           backgroundColor: Colors.purple,
            //           radius: 60,
            //         ),
            //       ),
            //       Positioned(
            //         left: 28,
            //         top: 13,
            //         child: CircleAvatar(
            //           backgroundColor: Colors.pink,
            //           radius: 60,
            //         ),
            //       ),
            //       Positioned(
            //         left: 23,
            //         top: 6,
            //         child: CircleAvatar(
            //           backgroundColor: Colors.purple,
            //           radius: 60,
            //         ),
            //       ),
            //       Positioned(
            //         left: 10,
            //         top: 2,
            //         child: CircleAvatar(
            //           backgroundColor: Color.fromARGB(255, 50, 12, 128),
            //           radius: 60,
            //         ),
            //       ),
            //       Positioned(
            //         left: 15,
            //         top: 8,
            //         child: CircleAvatar(
            //           backgroundColor: Color(0xff1c1434),
            //           radius: 60,
            //         ),
            //       ),
            //       Positioned(
            //           top: 50,
            //           left: 60,
            //           child: Image.asset(
            //             "assets/images/play_btn.png",
            //             height: 30,
            //             width: 35,
            //             fit: BoxFit.fill,
            //             color: Colors.white,
            //           ))
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

// class PlayButtonClip extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, 0);

//     path.lineTo(0, size.height);
//     path.lineTo(size.width, size.height);
//     path.lineTo(size.width, 0);

//     // path.moveTo(0, size.height / 4);
//     // path.quadraticBezierTo(50, 10, size.width * 0.3, 0);

//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     throw UnimplementedError();
//   }
// }


// class PlayButton extends CustomPainter{
//   @override
//   void 
// }
