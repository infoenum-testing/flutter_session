import 'package:flutter/material.dart';
import 'package:flutter_application_demo/controller/getx_controller.dart';
import 'package:flutter_application_demo/getxroute/getx_route_name.dart';

import 'package:flutter_application_demo/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class GetxDemo extends StatelessWidget {
  GetxDemo({super.key});

  // var getxdemoController = Get.lazyPut<GetxdemoController>(
  //     () => GetxdemoController(),
  //     fenix: true,
  //     tag: "demotag");
  var getxdemoController = Get.put(
    GetxdemoController(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GetBuilder(
              init: getxdemoController,
              builder: (controller) {
                return Center(
                    child: Text(
                  "${getxdemoController.counter}",
                  style: TextStyle(fontSize: 30),
                ));
              }),
          Obx(() => Text(
                "${getxdemoController.cout}",
                style: TextStyle(fontSize: 30),
              )),
          GetX(
              init: getxdemoController,
              builder: (controller) => Text(
                    "${controller.cout}",
                    style: TextStyle(fontSize: 30),
                  )),
          ElevatedButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (contxet) => HomeScreen()));
                Get.to(HomeScreen());
                Get.toNamed("/hone");
                Get.toNamed(RouteName.homescreen,
                    arguments: ["haider", "aayush"]);
                Get.toNamed(RouteName.getxdemo,
                    arguments: ["haider", "aayush"]);
              },
              child: Text("nextPage"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // getxdemoController.addFunction();
          // getxdemoController.addFunctionRective();

          // Get.defaultDialog(
          //     titlePadding: EdgeInsets.only(top: 10),
          //     title: "title",
          //     contentPadding: EdgeInsets.all(20),
          //     content: Text("are sure you want to delete this?"),
          //     cancel: TextButton(
          //         onPressed: () {
          //           Navigator.pop(context);
          //         },
          //         child: Text("cancle")),
          //     confirm: TextButton(
          //         onPressed: () {
          //           Navigator.pop(context);
          //         },
          //         child: Text("OK")));

          Get.bottomSheet(Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Get.changeTheme(ThemeData.dark());
                    },
                    icon: Icon(
                      Icons.dark_mode,
                      color: Colors.red,
                    )),
                IconButton(
                    onPressed: () {
                      Get.changeTheme(ThemeData.light());
                    },
                    icon: Icon(
                      Icons.light_mode,
                      color: Colors.red,
                    )),
              ],
            ),
          ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
