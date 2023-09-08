import 'package:flutter/material.dart';

class ShowModelBottomSheet extends StatelessWidget {
  const ShowModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("bottom Sheet"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(

                    // backgroundColor: Colors.amber,
                    elevation: 16,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                      // bottomLeft: Radius.circular(22),
                      // bottomRight: Radius.circular(22),
                    )),
                    // isDismissible: false,
                    // enableDrag: false,
                    context: context,
                    builder: (context) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            // ListTile(
                            //   title: Text("title"),
                            //   leading: CircleAvatar(),
                            //   subtitle: Text("sub title"),
                            //   trailing: Icon(Icons.abc),
                            // ),
                            // ListTile(
                            //   title: Text("title"),
                            //   leading: CircleAvatar(),
                            //   subtitle: Text("sub title"),
                            //   trailing: Icon(Icons.abc),
                            // ),
                            // ListTile(
                            //   title: Text("title"),
                            //   leading: CircleAvatar(),
                            //   subtitle: Text("sub title"),
                            //   trailing: Icon(Icons.abc),
                            // ),
                            // ListTile(
                            //   title: Text("title"),
                            //   leading: CircleAvatar(),
                            //   subtitle: Text("sub title"),
                            //   trailing: Icon(Icons.abc),
                            // ),
                            // ListTile(
                            //   title: Text("title"),
                            //   leading: CircleAvatar(),
                            //   subtitle: Text("sub title"),
                            //   trailing: Icon(Icons.abc),
                            // ),
                            // ListTile(
                            //   title: Text("title"),
                            //   leading: CircleAvatar(),
                            //   subtitle: Text("sub title"),
                            //   trailing: Icon(Icons.abc),
                            // ),
                            // ListTile(
                            //   title: Text("title"),
                            //   leading: CircleAvatar(),
                            //   subtitle: Text("sub title"),
                            //   trailing: Icon(Icons.abc),
                            // ),
                            // ListTile(
                            //   title: Text("title"),
                            //   leading: CircleAvatar(),
                            //   subtitle: Text("sub title"),
                            //   trailing: Icon(Icons.abc),
                            // ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Log in"),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Log out"),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    });
              },
              child: Text("show bottom sheet"))),
    );
  }
}
