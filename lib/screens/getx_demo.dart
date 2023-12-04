import 'package:flutter/material.dart';
import 'package:flutter_application_demo/controller/getx_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class GetxDemo extends StatelessWidget {
  GetxDemo({super.key});

  var getxdemoController = Get.put(GetxdemoController());
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
                  ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // getxdemoController.addFunction();
          getxdemoController.addFunctionRective();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
