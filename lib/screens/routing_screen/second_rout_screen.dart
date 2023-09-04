import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_demo/screens/routing_screen/third_rout_screen.dart';

class SecondRoutScreen extends StatelessWidget {
  static const id = "secondRoutScreenid";
  SecondRoutScreen({super.key, required this.technology});
  String technology;
  String name = "flutter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container(
          //   // width: 100,
          //   color: Colors.red,
          // ),

          Text(
            "Second Screen",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            technology,
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ThirdRoutScreen();
                }));
              },
              child: Text("Navigate Screen"))
        ],
      ),
    );
  }
}
