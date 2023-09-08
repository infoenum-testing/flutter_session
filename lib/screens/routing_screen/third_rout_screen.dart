import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_demo/screens/routing_screen/first_rout_screen.dart';

class ThirdRoutScreen extends StatelessWidget {
  const ThirdRoutScreen({super.key});
  static const id = "thirdRoutScreenid";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.abc_outlined),
        title: Text("Home Screen"),
        actions: [
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
        ],
      ),
      drawer: Drawer(),
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
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
                Navigator.pop(context);
                // Navigator.push(context, FirstRoutScreen.id);
              },
              child: Text("Navigate Screen"))
        ],
      ),
    );
  }
}
