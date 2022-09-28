import 'package:cloudyapp/constants/colors.dart';
import 'package:flutter/material.dart';

class PageOnBoarding extends StatefulWidget {
  final String title;
  final String image;
  final String context;
  PageOnBoarding({
    Key? key,
    required this.title,
    required this.image,
    required this.context,
  }) : super(key: key);

  @override
  State<PageOnBoarding> createState() => _PageOnBoardingState();
}

class _PageOnBoardingState extends State<PageOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    Colors.transparent,
                    backgroundColor,
                    backgroundColor,
                    backgroundColor
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0, 0, 0, 0, 0, 0.8, 0.9, 1],
                ),
              ),
              child: Image(
                image: AssetImage(
                  widget.image,
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.9,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.05,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        widget.title,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          color: textSecondary,
                          height: 1.2,
                          fontSize: 45,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 3,
                        ),
                      ),
                      Text(
                        widget.context + widget.context,
                        overflow: TextOverflow.visible,
                        style: TextStyle(
                          color: textSecondary,
                          fontSize: 17,
                          height: 1.6,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
