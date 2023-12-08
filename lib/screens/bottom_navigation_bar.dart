import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_demo/screens/bottombar_screens/home_nav_screen.dart';
import 'package:flutter_application_demo/screens/bottombar_screens/profile_nev_screen.dart';
import 'package:flutter_application_demo/screens/bottombar_screens/setting_nev_screen.dart';

class BottomNavigationbar extends StatefulWidget {
  BottomNavigationbar({super.key});

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int currentindex = 0;

  List myscreen = <Widget>[
    HomeNevScreen(),
    SettingNevScrren(),
    ProfileNevScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: myscreen[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.purple,
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "home",
                backgroundColor: Colors.amber,
                activeIcon: Icon(Icons.abc_sharp)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: "setting",
                activeIcon: Icon(Icons.abc)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "profile",
                activeIcon: Icon(Icons.abc))
          ]),
    );
  }
}
