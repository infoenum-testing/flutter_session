import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNevScreen extends StatelessWidget {
  const HomeNevScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      "Home Screen",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ));
  }
}
