import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_demo/route/route_name.dart';
import 'package:flutter_application_demo/route/routes.dart';
import 'package:flutter_application_demo/screens/Listview_and_gridview.dart';
import 'package:flutter_application_demo/screens/assets_image_screen.dart';
import 'package:flutter_application_demo/screens/bottom_navigation_bar.dart';
import 'package:flutter_application_demo/screens/button_screen.dart';
import 'package:flutter_application_demo/screens/flexible_and_expanded.dart';
import 'package:flutter_application_demo/screens/form_validation.dart';
import 'package:flutter_application_demo/screens/home_screen.dart';
import 'package:flutter_application_demo/screens/routing_screen/first_rout_screen.dart';
import 'package:flutter_application_demo/screens/routing_screen/second_rout_screen.dart';
import 'package:flutter_application_demo/screens/routing_screen/third_rout_screen.dart';
import 'package:flutter_application_demo/screens/show_bottomsheet.dart';
import 'package:flutter_application_demo/screens/stack_screen.dart';
import 'package:flutter_application_demo/screens/tabbar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "prakhar",
      debugShowCheckedModeBanner: false,
      home: ShowModelBottomSheet(),
      // initialRoute: RouteName.firstscreen,
      // routes: {
      //   FirstRoutScreen.id: (context) => FirstRoutScreen(),
      //   SecondRoutScreen.id: (context) => SecondRoutScreen(),
      //   ThirdRoutScreen.id: (context) => ThirdRoutScreen()
      // },

      onGenerateRoute: Routes.generateRoute,
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
