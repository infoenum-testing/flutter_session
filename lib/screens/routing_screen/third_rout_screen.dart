import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdRoutScreen extends StatelessWidget {
  const ThirdRoutScreen({super.key});
  static const id = "thirdRoutScreenid";
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
            "Third Screen",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Navigate Screen"))
        ],
      ),
    );
  }
}
