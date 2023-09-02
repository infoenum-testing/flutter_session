import 'package:flutter/material.dart';
import 'package:flutter_application_demo/screens/home_screen.dart';

class FormValidationScreen extends StatefulWidget {
  FormValidationScreen({super.key});

  @override
  State<FormValidationScreen> createState() => _FormValidationScreenState();
}

class _FormValidationScreenState extends State<FormValidationScreen> {
  final _myformkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool visible = true;
  String? error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("form"),
      ),
      body: Form(
        key: _myformkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: nameController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter your name";
                } else if (value.length < 12) {
                  return "please enter max 12 charactor";
                } else {
                  return null;
                }
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.ac_unit,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(Icons.abc_outlined),
                  hintText: "Enter your name",
                  hintStyle: TextStyle(color: Colors.red),
                  // disabledBorder:
                  //     OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: passwordController,
              obscureText: visible,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please enter password";
                } else if (value.length < 12) {
                  return "please enter max 12 charactor";
                }
                return null;
              },
              decoration: InputDecoration(
                  hintMaxLines: 1,
                  errorMaxLines: 2,
                  prefixIcon: Icon(
                    Icons.abc,
                    color: Colors.black,
                  ),
                  suffixIcon: IconButton(
                    icon: visible
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                  ),
                  hintText: "Enter your password",
                  hintStyle: TextStyle(color: Colors.red),
                  // disabledBorder:
                  //     OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
            Text(error ?? ""),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_myformkey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }

                  // if (passwordController.text.isEmpty) {
                  //   error = "please enter your name";
                  // }
                },
                child: Text("LogIn"))
          ]),
        ),
      ),
    );
  }
}
