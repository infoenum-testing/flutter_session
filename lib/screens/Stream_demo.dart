import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  StreamDemo({super.key});

  int counter = 0;

  StreamController<int> _streamController = StreamController<int>.broadcast();
  StreamController<String> streamStringController = StreamController<String>();
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // StreamBuilder(
          //     stream: _streamController.stream,
          //     builder: ((context, snapshot) {
          //       if (snapshot.hasData) {
          //         return Center(
          //           child: Text(
          //             "${snapshot.data}",
          //             style: TextStyle(fontSize: 50),
          //           ),
          //         );
          //       } else {
          //         return Center(
          //           child: Text(
          //             "0",
          //             style: TextStyle(fontSize: 50),
          //           ),
          //         );
          //       }
          //     })),
          // StreamBuilder(
          //     stream: _streamController.stream,
          //     builder: ((context, snapshot) {
          //       if (snapshot.hasData) {
          //         return Center(
          //           child: Text(
          //             "${snapshot.data}",
          //             style: TextStyle(fontSize: 50),
          //           ),
          //         );
          //       } else {
          //         return Center(
          //           child: Text(
          //             "0",
          //             style: TextStyle(fontSize: 50),
          //           ),
          //         );
          //       }
          //     })),
          // StreamBuilder(
          //     stream: _streamController.stream,
          //     builder: ((context, snapshot) {
          //       if (snapshot.hasData) {
          //         return Center(
          //           child: Text(
          //             "${snapshot.data}",
          //             style: TextStyle(fontSize: 50),
          //           ),
          //         );
          //       } else {
          //         return Center(
          //           child: Text(
          //             "0",
          //             style: TextStyle(fontSize: 50),
          //           ),
          //         );
          //       }
          //     })),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                streamStringController.sink.add(_textEditingController.text);
              },
              child: Text("Update")),

          StreamBuilder<String>(
              stream: streamStringController.stream,
              builder: (context, snapshot) {
                return Text(
                  snapshot.data ?? "",
                  style: TextStyle(fontSize: 20),
                );
              }),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     counter++;
      //     _streamController.sink.add(counter);
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
