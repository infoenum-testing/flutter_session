import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  bool changeColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text(
          "data",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
        ),
        FloatingActionButton(onPressed: () {}),
        TextButton(
          onPressed: () {
            print("tap");
          },
          onLongPress: () {
            print("on long press");
          },
          style: ButtonStyle(),
          child: Text("TextButton"),
        ),
        ElevatedButton(onPressed: () {}, child: Text("ElevetedButton")),
        IconButton(onPressed: () {}, icon: Icon(Icons.add_a_photo)),
        TextButton.icon(
            onPressed: () {
              setState(() {
                changeColor = !changeColor;

                print(changeColor);
              });
            },
            icon: Icon(Icons.abc),
            label: Text("texticonbutton")),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 90,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8)),
            child: Center(
                child: Text(
              "containerbtn",
              style: TextStyle(color: Colors.black, fontSize: 13),
            )),
          ),
        )
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: changeColor ? Colors.amber : Colors.red,
      ),
    );
  }
}
