import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_demo/models/onbording_data_model.dart';
import 'package:flutter_application_demo/screens/home_screen.dart';

class OnbordingScreen extends StatefulWidget {
  OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  List<OnbordingDataModel> onbordingData = [
    OnbordingDataModel(
        img: "assets/img/guide_image.png",
        heading: "First Heading",
        content:
            "Some of the most popular apps using Flutter are Reflectly, Google Ads, Alibaba, Tencent, Birch Finance, Coach Yourself, and Watermaniac. In general, Flutter is used to develop android, iOS, Linux, Mac, and Web applications from a single codebase or with high brand designs."),
    OnbordingDataModel(
        img: "assets/img/meditate_image.png",
        heading: "second Heading",
        content:
            "Some of the most popular apps using Flutter are Reflectly, Google Ads, Alibaba, Tencent, Birch Finance, Coach Yourself, and Watermaniac. In general, Flutter is used to develop android, iOS, Linux, Mac, and Web applications from a single codebase or with high brand designs."),
    OnbordingDataModel(
        img: "assets/img/sleep_image.png",
        heading: "Third Heading",
        content:
            "Some of the most popular apps using Flutter are Reflectly, Google Ads, Alibaba, Tencent, Birch Finance, Coach Yourself, and Watermaniac. In general, Flutter is used to develop android, iOS, Linux, Mac, and Web applications from a single codebase or with high brand designs.")
  ];

  StreamController<int> _streamController = StreamController<int>.broadcast();
  PageController _pageController = PageController();
  @override
  void initState() {
    // TODO: implement initState
    _streamController.sink.add(0);
    super.initState();
  }

  get pageisLast {
    return _pageController.page == onbordingData.length - 1;
  }

  forwordAction() {
    if (pageisLast) {
      Navigator.push(context, MaterialPageRoute(builder: ((context) {
        return HomeScreen();
      })));
    } else {
      _pageController.nextPage(
          duration: Duration(milliseconds: 200), curve: Curves.ease);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              controller: _pageController,
              itemCount: onbordingData.length,
              onPageChanged: (value) {
                _streamController.sink.add(value);
              },
              itemBuilder: (context, index) {
                // debugPrint("======${_pageController.page}");
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(onbordingData[index].img),
                    SizedBox(
                      height: 30,
                      width: double.infinity,
                    ),
                    Text(
                      onbordingData[index].heading,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Text(onbordingData[index].content))
                  ],
                );
              }),
          StreamBuilder<int>(
              stream: _streamController.stream,
              builder: (context, snapshot) {
                return Positioned(
                  left: 20,
                  bottom: 20,
                  child: Row(
                    children: List.generate(
                        onbordingData.length,
                        (index) => Container(
                              decoration: BoxDecoration(
                                  color: snapshot.data == index
                                      ? Colors.brown
                                      : Colors.black,
                                  borderRadius: BorderRadius.circular(12)),
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              width: 20,
                              height: 20,
                            )),
                  ),
                );
              }),
          StreamBuilder<int>(
              stream: _streamController.stream,
              builder: (context, snapshot) {
                return Positioned(
                  bottom: 10,
                  right: 10,
                  child: FloatingActionButton(
                    backgroundColor: snapshot.data == onbordingData.length - 1
                        ? Colors.brown
                        : Colors.black,
                    onPressed: () {
                      forwordAction();
                    },
                    child: Text(snapshot.data == onbordingData.length - 1
                        ? "Start"
                        : "Next"),
                  ),
                );
              })
        ],
      ),
    );
  }
}
