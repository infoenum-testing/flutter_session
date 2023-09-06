import 'package:flutter/material.dart';
import 'package:flutter_application_demo/route/route_name.dart';
import 'package:flutter_application_demo/screens/routing_screen/first_rout_screen.dart';
import 'package:flutter_application_demo/screens/routing_screen/second_rout_screen.dart';

class Routes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.firstscreen:
        return MaterialPageRoute(builder: (context) => FirstRoutScreen());

      case RouteName.secondscreen:
        return MaterialPageRoute(builder: (context) => SecondRoutScreen());
      default:
        return MaterialPageRoute(builder: (context) => SecondRoutScreen());
    }
  }
}
