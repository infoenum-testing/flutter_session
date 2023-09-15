import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_demo/models/getemployees_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Datum> getemployeeslist = [];
  bool dataloading = false;

  @override
  void initState() {
    getemployees();

    super.initState();
  }

  getemployees() async {
    debugPrint("run api");
    dataloading = true;
    try {
      var url = Uri.parse('https://dummy.restapiexample.com/api/v1/employees');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        // var jsonResponse = jsonDecode(response.body);
        // debugPrint("---f----${jsonResponse}");

        GetEmployees getemployees = getEmployeesFromJson(response.body);
        debugPrint("++++++++++${getemployees.status}");

        getemployeeslist = getemployees.data;
        setState(() {});
        debugPrint("++++++++++${getemployeeslist.length}");
      }
      dataloading = false;
      debugPrint("run api");
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: dataloading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: getemployeeslist.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      title: Text(getemployeeslist[index].employeeName),
                      subtitle: Text(
                          getemployeeslist[index].employeeSalary.toString()),
                      trailing:
                          Text(getemployeeslist[index].employeeAge.toString()),
                    ),
                  ),
                );

                //  Column(
                //   children: [
                //     Text(getemployeeslist[index].id.toString()),
                //     Text(getemployeeslist[index].employeeName),
                //     Text(getemployeeslist[index].employeeSalary.toString()),
                //     Text(getemployeeslist[index].employeeAge.toString()),
                //   ],
                // );
              }),
    );
  }
}
