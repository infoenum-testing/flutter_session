import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_demo/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My first App",
      home: HomeScreen(),
    );
  }
}

















// class MyHome extends StatefulWidget {
//   const MyHome({super.key});

//   @override
//   State<MyHome> createState() => _MyHomeState();
// }

// class _MyHomeState extends State<MyHome> {
//   int value = 0;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   void didChangeDependencies() {
//     // TODO: implement didChangeDependencies
//     super.didChangeDependencies();
//   }

//   void counterfunction() {
//     value++;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return 
    
    
    
    // Scaffold(
    //   appBar: AppBar(
    //     title: Text("My Appbar"),
    //     actions: [Text("data")],
    //   ),
    //   body:
      
      
      
    //    Align(
    //     alignment: Alignment.center,
    //     child: Container(
    //       margin: EdgeInsets.only(right: 50),
    //       padding: EdgeInsets.only(right: 50),
    //       height: 200,
    //       width: 200,
    //       decoration: BoxDecoration(
    //           gradient: LinearGradient(
    //             begin: Alignment.topCenter,
    //             end: Alignment.bottomCenter,
    //             colors: [Colors.red, Colors.blue, Colors.pink],
    //           ),
    //           borderRadius: BorderRadius.circular(12),
    //           // color: Color(#),
    //           border: Border.all(width: 2)),
    //       child: Center(child: Text("container")),
    //     ),
    //   ),

    //   // Center(
    //   //   child: Text("${value}",
    //   //       style: TextStyle(
    //   //         fontSize: 50,
    //   //         color: Colors.purple,
    //   //         fontWeight: FontWeight.bold,
    //   //       )),
    //   // ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       setState(() {
    //         counterfunction();
    //       });
    //     },
    //     child: Icon(Icons.add),
    //   ),
    // );
//   }
// }
