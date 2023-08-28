import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SizedBox(
          height: 500,
          width: 500,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Positioned(
                // top: 500,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              Positioned(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                ),
              ),
              Positioned(
                top: 0,
                // bottom: 0,
                // right: 0,
                left: 0,

                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }
}
