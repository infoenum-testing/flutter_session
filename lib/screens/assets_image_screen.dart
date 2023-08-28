import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_demo/utils/asset_path.dart';

class AssetsImageScreen extends StatelessWidget {
  AssetsImageScreen({super.key});
  AssetPath assetPath = AssetPath();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Image.asset(AssetPath.imagemeditate),
            ),
            Image.asset(
              AssetPath.imagerest,
            ),
            Container(
              margin: EdgeInsets.only(left: 60),
              child: Image.asset(
                AssetPath.imagefeature,
              ),
            ),
            Image.asset(
              AssetPath.imagemarket,
            ),
            Container(
              color: Colors.red,
              height: 200,
              width: 200,
              child: Center(
                child: Text(
                  "data",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        )),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Image.asset(AssetPath.imagemeditate),
              ),
              Image.asset(
                AssetPath.imagerest,
              ),
              Container(
                margin: EdgeInsets.only(left: 60),
                child: Image.asset(
                  AssetPath.imagefeature,
                ),
              ),
              Image.asset(
                AssetPath.imagemarket,
              ),
              Container(
                color: Colors.red,
                height: 200,
                width: 200,
                child: Center(
                  child: Text(
                    "data",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
