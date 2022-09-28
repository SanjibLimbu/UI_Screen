import 'package:cloudyapp/screens/custom_painter.dart';
import 'package:cloudyapp/screens/detail_brain.dart';
import 'package:cloudyapp/screens/detail_page.dart';
import 'package:cloudyapp/screens/home_gucci.dart';
import 'package:cloudyapp/screens/home_page.dart';
import 'package:cloudyapp/screens/home_page_brain.dart';
import 'package:cloudyapp/screens/onboarding/onboarding_page.dart';
import 'package:cloudyapp/screens/profile_chart.dart';
import 'package:cloudyapp/widgets/menu_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'OpenSans'),
      initialRoute: '/home_brain',
      routes: {
        '/': (context) => const OnBoardingPage(),
        '/home': (context) => const HomePage(),
        '/home_brain': (context) => const HomeBrain(),
        '/detail_page': (context) => const DetailPage(),
        '/menu': (context) => const MenuPage(),
        '/profile': (context) => const ProfileChart(),
        '/detail_brain': (context) => const DetailBrian(),
        '/home_gucci': (context) => const HomeGucci(),
        '/custom_shape': (context) => const CustomShape(),
      },
    );
  }
}
