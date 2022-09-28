import 'package:cloudyapp/constants/colors.dart';
import 'package:cloudyapp/widgets/back_btn.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      primaryColor,
                      secondaryColor,
                      textPrimary,
                      textSecondary
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              child: SizedBox(),
            )
          ],
        ),
        // BackBtn(),
        Positioned(
            top: 80,
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuItem(
                        icon: Icons.settings,
                        iconTitle: 'Settings',
                      ),
                      MenuItem(
                        icon: Icons.message,
                        iconTitle: 'Message',
                      ),
                      MenuItem(
                        icon: Icons.person,
                        iconTitle: 'Friends',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuItem(
                        icon: Icons.location_on,
                        iconTitle: 'Settings',
                      ),
                      MenuItem(
                        icon: Icons.settings,
                        iconTitle: 'Map',
                      ),
                      MenuItem(
                        icon: Icons.calendar_month,
                        iconTitle: 'Calender',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MenuItem(
                        icon: Icons.photo,
                        iconTitle: 'Gallery',
                      ),
                      MenuItem(
                        icon: Icons.cloud,
                        iconTitle: 'Weather',
                      ),
                      MenuItem(
                        icon: Icons.play_arrow,
                        iconTitle: 'Playlist',
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

// ignore: must_be_immutable
class MenuItem extends StatefulWidget {
  late IconData icon;
  late String iconTitle;
  MenuItem({
    Key? key,
    required this.icon,
    required this.iconTitle,
  }) : super(key: key);

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  Color iconColor = secondaryColor;
  Color btnBgColor = textSecondary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(4.0),
              ),
              padding: EdgeInsets.all(30),
              backgroundColor: btnBgColor,
              foregroundColor: iconColor,
              shadowColor: backgroundColor,
              elevation: 10),
          onPressed: (() {
            setState(() {
              iconColor = textSecondary;
              btnBgColor = secondaryColor;
            });
            Navigator.pushNamed(context, '/home');
          }),
          child: Icon(
            widget.icon,
            size: 35,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          widget.iconTitle,
          style: TextStyle(
              color: primaryColor, fontSize: 16, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
