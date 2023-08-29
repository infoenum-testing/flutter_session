import 'package:flutter/material.dart';
import 'package:flutter_application_demo/utils/asset_path.dart';

class FlexibleandExpanded extends StatelessWidget {
  const FlexibleandExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Card(
            child: SizedBox(
              height: 350,
              width: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      maxRadius: 25,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(AssetPath.imagefeature),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Like",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.chat),
                      Text(
                        "Share",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )

        // Column(
        //   // direction: Axis.vertical,
        //   children: [
        //     SafeArea(child: Text("my text")),
        //     Flexible(
        //       child: Container(
        //         // width: 100,
        //         height: 300,
        //         color: Colors.red,
        //       ),
        //     ),
        //     Flexible(
        //       child: Container(
        //         // width: 100,
        //         height: 300,
        //         color: Colors.yellow,
        //       ),
        //     ),
        //     Expanded(
        //         child: Container(
        //       height: 150,
        //       color: Colors.blue,
        //     ))
        //   ],
        // ),
        );
  }
}
