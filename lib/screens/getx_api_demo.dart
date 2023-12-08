import 'package:flutter/material.dart';
import 'package:flutter_application_demo/controller/getx_api_demo_controller.dart';
import 'package:flutter_application_demo/controller/getx_controller.dart';
import 'package:get/get.dart';

class GetxApiDemo extends StatelessWidget {
  GetxApiDemo({super.key});

  var getxapidemoController = Get.put(GetxApiDemoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
          init: getxapidemoController,
          builder: (controller) {
            return getxapidemoController.getemployeeslist.length != 0
                ? ListView.builder(
                    itemCount: getxapidemoController.getemployeeslist.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: ListTile(
                            title: Text(getxapidemoController
                                .getemployeeslist[index].employeeName),
                            subtitle: Text(getxapidemoController
                                .getemployeeslist[index].employeeSalary
                                .toString()),
                            trailing: Text(getxapidemoController
                                .getemployeeslist[index].employeeAge
                                .toString()),
                          ),
                        ),
                      );
                    })
                : Center(
                    child: CircularProgressIndicator(),
                  );
          }),
    );
  }
}
