import 'package:flutter_application_demo/getxroute/getx_route_name.dart';
import 'package:flutter_application_demo/screens/getx_api_demo.dart';
import 'package:flutter_application_demo/screens/getx_demo.dart';
import 'package:flutter_application_demo/screens/home_screen.dart';
import 'package:get/get.dart';

class Getxrout {
  static routing() {
    return [
      // GetPage(name: RouteName.getxdemo, page: () => GetxDemo()),
      GetPage(name: RouteName.getxdemo, page: () => GetxApiDemo()),
      GetPage(name: RouteName.homescreen, page: () => HomeScreen()),
    ];
  }
}
