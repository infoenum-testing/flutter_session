import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  StreamDemo({super.key});
  int counter = 0;

  StreamController<int> _streamController = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: _streamController.stream,
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return Center(
                child: Text(
                  "${snapshot.data}",
                  style: TextStyle(fontSize: 50),
                ),
              );
            } else {
              return Center(
                child: Text(
                  "0",
                  style: TextStyle(fontSize: 50),
                ),
              );
            }
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          _streamController.sink.add(counter);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
