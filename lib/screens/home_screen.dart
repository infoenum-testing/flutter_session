import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 300,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.black,
              ),
            ],
          ),
        )

        //  SingleChildScrollView(
        //   child: Column(
        //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       Container(
        //         height: 100,
        //         width: 100,
        //         color: Colors.red,
        //       ),
        //       // Container(
        //       //   height: 100,
        //       //   width: 100,
        //       //   color: Colors.blue,
        //       // ),
        //       // Container(
        //       //   height: 100,
        //       //   width: 100,
        //       //   color: Colors.black,
        //       // ),

        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Container(
        //             height: 100,
        //             width: 100,
        //             color: Colors.red,
        //           ),
        //           Container(
        //             height: 100,
        //             width: 100,
        //             color: Colors.black,
        //           ),
        //           SizedBox(height: 10),
        //           Container(
        //             height: 100,
        //             width: 100,
        //             color: Colors.yellow,
        //           ),
        //         ],
        //       ),
        //       SizedBox(height: 40),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         // color: Colors.green,
        //       ),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         // color: Colors.blue,
        //       ),
        //       SizedBox(height: 40),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.green,
        //       ),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.yellow,
        //       ),
        //       SizedBox(height: 40),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.red,
        //       ),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.blue,
        //       ),
        //       Container(
        //         margin: EdgeInsets.all(40),
        //         padding: EdgeInsets.only(top: 20),
        //         width: 100,
        //         height: 100,
        //         color: Colors.black,
        //       ),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.red,
        //       ),
        //       SizedBox(height: 40),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.blue,
        //       ),
        //       SizedBox(height: 40),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.black,
        //       ),
        //     ],
        //   ),
        // ),
        );
  }
}
