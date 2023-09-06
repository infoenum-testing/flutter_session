import 'package:flutter/material.dart';
import 'package:flutter_application_demo/route/route_name.dart';
import 'package:flutter_application_demo/screens/routing_screen/second_rout_screen.dart';
import 'package:flutter_application_demo/screens/routing_screen/third_rout_screen.dart';

class FirstRoutScreen extends StatelessWidget {
  static const id = "firstRoutScreenid";
  FirstRoutScreen({super.key});
  String name = "flutter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   // width: 100,
          //   color: Colors.red,
          // ),

          Text(
            "First Screen",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context, RouteName.secondscreen,
                  // arguments: RoutingArgument(name: "myname", age: "25")
                );
                // Navigator.popUntil(
                //   context,
                //   (route) => true,
                // );

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => SecondRoutScreen(
                //               technology: "flutter",
                //             )));
              },
              child: Text("Navigate Second Screen"))
        ],
      ),
    );
  }
}
// Final argument =Model route.of(context).settings.arguments as Map

// Static Route<dynamic> generateRoute(RouteSettings settings){

// switch(settings.name){

// case: 	Routename.homescreen:
// Return MaterialPgeRoute(builder: (contyext)=>HomeScreen());
// }
// }

class RoutingArgument {
  String name;
  String age;
  RoutingArgument({required this.name, required this.age});
}
