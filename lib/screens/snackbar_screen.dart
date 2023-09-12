import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                final snackbar = SnackBar(
                  dismissDirection: DismissDirection.endToStart,
                  behavior: SnackBarBehavior.fixed,

                  content: Text("this is my snackbar"),
                  action: SnackBarAction(label: "undu", onPressed: () {}),
                  backgroundColor: Colors.red,
                  // duration: Duration(milliseconds: 500),
                  shape: Border.all(
                    color: Colors.black,
                  ),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
              child: Text("show snackbar"))),
    );
  }
}
