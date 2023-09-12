import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  traversalEdgeBehavior: TraversalEdgeBehavior.leaveFlutterView,

                  // barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      // backgroundColor: Colors.amber,

                      elevation: 0,

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      title: Text("Logout"),
                      content: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                            Text("are you sure for logout?"),
                          ],
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      actionsAlignment: MainAxisAlignment.start,
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "ok",
                              style: TextStyle(color: Colors.green),
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "cencle",
                              style: TextStyle(color: Colors.red),
                            ))
                      ],
                    );
                  });
            },
            child: Text("show dilog")),
      ),
    );
  }
}
