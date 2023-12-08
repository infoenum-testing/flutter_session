import 'package:flutter/material.dart';
import 'package:flutter_application_demo/models/getemployees_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class GetxApiDemoController extends GetxController {
  var dataloading = false;
  List<Datum> getemployeeslist = [];

  @override
  void onInit() {
    debugPrint("-------------------");
    getemployees();

    super.onInit();
  }

  getemployees() async {
    debugPrint("run api");
    dataloading = true;
    try {
      var url = Uri.parse('https://dummy.restapiexample.com/api/v1/employees');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        GetEmployees getemployees = getEmployeesFromJson(response.body);
        debugPrint("++++++++++${getemployees.status}");

        getemployeeslist = getemployees.data;

        debugPrint("++++++++++${getemployeeslist.length}");
      }
      dataloading = false;
      debugPrint("run api");

      update();
    } catch (e) {
      print(e.toString());
    }
  }
}
