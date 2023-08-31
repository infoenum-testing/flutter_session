import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListviewandGridviewScreen extends StatelessWidget {
  ListviewandGridviewScreen({super.key});

  List localdata = [
    localmodel(name: "ayus", image: "assets/img/rest.png"),
    localmodel(name: "prakher", image: "assets/img/rest.png"),
    localmodel(name: "hider", image: "assets/img/rest.png"),
    localmodel(name: "ayus", image: "assets/img/rest.png")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView.builder(
            itemCount: localdata.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                child: SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ListTile(
                    title: Text(localdata[index].name),
                    subtitle: Text("subtitle"),
                    leading: CircleAvatar(
                        backgroundImage: AssetImage(localdata[index].image)),
                    trailing: Text("${index}"),
                    onTap: () {},
                  ),
                ),
              );
            })

        // ListView.builder(
        //     itemCount: 4,
        //     itemBuilder: (context, index) {
        //       return Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Card(
        //           color: Colors.white,
        //           child: SizedBox(
        //             height: 100,
        //             width: double.infinity,
        //             child: ListTile(
        //               title: Text("tile"),
        //               subtitle: Text("subtitle"),
        //               leading: CircleAvatar(
        //                   backgroundImage: AssetImage("assets/img/rest.png")),
        //               trailing: Text("${index}"),
        //               onTap: () {},
        //             ),
        //           ),
        //         ),
        //       );
        //     })

        // GridView.count(
        //   crossAxisSpacing: 12,
        //   mainAxisSpacing: 12,
        //   crossAxisCount: 2,
        //   scrollDirection: Axis.vertical,
        //   padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
        //   children: [
        //     Container(
        //       height: 100,
        //       width: 50,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 50,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 50,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 50,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 50,
        //       color: Colors.black,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 50,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 50,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 50,
        //       color: Colors.red,
        //     ),
        //   ],
        // )

        // ListView(
        //   // scrollDirection: Axis,
        //   padding: EdgeInsets.symmetric(horizontal: 10),
        //   children: [
        //     Container(
        //       height: 100,
        //       width: double.infinity,
        //       color: Colors.red,
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     Container(
        //       height: 100,
        //       width: double.infinity,
        //       color: Colors.red,
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     Container(
        //       height: 100,
        //       width: double.infinity,
        //       color: Colors.red,
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     Container(
        //       height: 100,
        //       width: double.infinity,
        //       color: Colors.red,
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     Container(
        //       height: 100,
        //       width: double.infinity,
        //       color: Colors.red,
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     Container(
        //       height: 100,
        //       width: double.infinity,
        //       color: Colors.red,
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     Container(
        //       height: 100,
        //       width: double.infinity,
        //       color: Colors.red,
        //     ),
        //     SizedBox(
        //       height: 10,
        //     ),
        //     Container(
        //       height: 100,
        //       width: double.infinity,
        //       color: Colors.red,
        //     ),
        //   ],
        // ),
        );
  }
}

class localmodel {
  final name;
  final image;
  localmodel({this.name, this.image});
}
