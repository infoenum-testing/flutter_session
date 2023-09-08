import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_demo/screens/bottombar_screens/home_nav_screen.dart';
import 'package:flutter_application_demo/screens/bottombar_screens/profile_nev_screen.dart';
import 'package:flutter_application_demo/screens/bottombar_screens/setting_nev_screen.dart';

class TabbarScreen extends StatelessWidget {
  TabbarScreen({super.key});
  // TabController tabController;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      initialIndex: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Tabbar"),
          bottom: TabBar(
              // controller: tabController,
              indicatorWeight: 20,
              // physics: NeverScrollableScrollPhysics(),
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              dragStartBehavior: DragStartBehavior.start,
              indicator: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "home",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "settings",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "profile",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "xyz",
                ),
                Tab(
                  icon: Icon(Icons.home),
                  text: "home",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "settings",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "profile",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "xyz",
                ),
                Tab(
                  icon: Icon(Icons.home),
                  text: "home",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "settings",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "profile",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "xyz",
                ),
              ]),
        ),
        body: TabBarView(
            // controller: tabController,
            physics: NeverScrollableScrollPhysics(),
            children: [
              // Center(child: Text("Home screen")),
              // Center(child: Text("Settings screen")),
              // Center(child: Text("Profile screen")),

              HomeNevScreen(),
              SettingNevScrren(),
              ProfileNevScreen(),
              ProfileNevScreen(),
              HomeNevScreen(),
              SettingNevScrren(),
              ProfileNevScreen(),
              ProfileNevScreen(),
              HomeNevScreen(),
              SettingNevScrren(),
              ProfileNevScreen(),
              ProfileNevScreen(),
            ]),
      ),
    );
  }
}
