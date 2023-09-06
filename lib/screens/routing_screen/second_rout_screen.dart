import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_demo/screens/routing_screen/first_rout_screen.dart';
import 'package:flutter_application_demo/screens/routing_screen/third_rout_screen.dart';

class SecondRoutScreen extends StatefulWidget {
  static const id = "secondRoutScreenid";
  SecondRoutScreen({
    super.key,
  });
  // String technology;

  @override
  State<SecondRoutScreen> createState() => _SecondRoutScreenState();
}

class _SecondRoutScreenState extends State<SecondRoutScreen> {
  String name = "flutter";

  @override
  void initState() {
    myFuntion();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final argument =
    //     ModalRoute.of(context)!.settings.arguments as RoutingArgument;
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
          // Text(
          //   argument.name,
          //   style: TextStyle(fontSize: 30),
          // ),
          // Text(
          //   argument.age,
          //   style: TextStyle(fontSize: 30),
          // ),
          SizedBox(
            width: double.infinity,
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ThirdRoutScreen();
                }));
                // Navigator.popUntil(context, (Route) => false);
              },
              child: Text("Navigate Screen"))
        ],
      ),
    );
  }

  void myFuntion({String? params}) {
    print(params);
    print("-----------------");
  }
}
