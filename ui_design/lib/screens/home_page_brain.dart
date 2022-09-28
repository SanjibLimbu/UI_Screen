import 'package:cloudyapp/constants/colors.dart';
import 'package:cloudyapp/screens/detail_brain.dart';
import 'package:cloudyapp/widgets/home_brain_widget.dart';
import 'package:flutter/material.dart';

class HomeBrain extends StatefulWidget {
  const HomeBrain({super.key});

  @override
  State<HomeBrain> createState() => _HomeBrainState();
}

class _HomeBrainState extends State<HomeBrain> {
  int selectedIndex = 0;
  String _selectedMenu = '';

  static const List<Widget> widgetOptions = <Widget>[
    HomeBrainWidget(),
    HomeBrainWidget(),
    DetailBrian(),
    HomeBrainWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,

        currentIndex: selectedIndex,
        selectedItemColor: Color.fromARGB(255, 123, 112, 170),
        backgroundColor: Color.fromARGB(255, 38, 23, 107).withOpacity(0.9),
        unselectedItemColor: Color.fromARGB(255, 97, 85, 151),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return RadialGradient(
                  center: Alignment.topLeft,
                  radius: 0.5,
                  colors: <Color>[
                    Color.fromARGB(255, 148, 47, 163),
                    Color.fromARGB(255, 174, 76, 177),
                    Color.fromARGB(255, 177, 109, 232),
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Icon(Icons.home_rounded, color: Colors.white),
            ),
            icon: new Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
            ),
            label: 'Training',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart_rounded,
            ),
            label: 'Training',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_rounded,
              ),
              label: 'Settings',
              backgroundColor: secondaryColor),
        ],
      ),
    );
  }
}





