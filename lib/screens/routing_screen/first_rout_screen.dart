import 'package:flutter/material.dart';
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
                Navigator.pushNamed(context, ThirdRoutScreen.id);
              },
              child: Text("Navigate Second Screen"))
        ],
      ),
    );
  }
}
