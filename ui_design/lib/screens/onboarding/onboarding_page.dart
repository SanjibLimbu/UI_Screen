import 'package:cloudyapp/screens/onboarding/onboarding_ui.dart';
import 'package:cloudyapp/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.10,
        ),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              if (index == 2) {
                isLastPage = true;
              } else {
                isLastPage = false;
              }
            });
          },
          children: [
            PageOnBoarding(
              title: "Sharing Your Moment",
              image: "assets/images/image_1.png",
              context:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
            ),
            PageOnBoarding(
              title: "2",
              image: "assets/images/image_2.jpeg",
              context: "2",
            ),
            PageOnBoarding(
              title: "3",
              image: "assets/images/image_1.png",
              context: "3",
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? TextButton(
              style: TextButton.styleFrom(
                foregroundColor: textSecondary,
                backgroundColor: secondaryColor,
                minimumSize: Size(
                    double.infinity, MediaQuery.of(context).size.height * 0.10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          : Container(
              color: backgroundColor,
              height: MediaQuery.of(context).size.height * 0.10,
              padding: EdgeInsets.symmetric(
                horizontal: 35,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      controller.animateToPage(
                        2,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn,
                      );
                    },
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerLeft),
                    child: const Text(
                      'SKIP',
                      style: TextStyle(color: textSecondary, fontSize: 18),
                    ),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: WormEffect(
                        spacing: 12.0,
                        dotHeight: 12,
                        dotWidth: 12,
                        paintStyle: PaintingStyle.stroke,
                        strokeWidth: 1.5,
                        dotColor: primaryColor,
                        activeDotColor: secondaryColor,
                      ),
                      onDotClicked: (index) => controller.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      ),
                    ),
                  ),
                  Container(
                    color: secondaryColor,
                    height: MediaQuery.of(context).size.height * 0.10,
                    padding: EdgeInsets.symmetric(horizontal: 11),
                    child: TextButton(
                      onPressed: () {
                        controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: Icon(
                        Icons.arrow_forward_sharp,
                        color: textSecondary,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
