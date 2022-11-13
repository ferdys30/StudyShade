import 'dart:async';
import 'package:studyshade_flutter/screen/splashscreen2.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => splash2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.book,
            size: 100.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 24.0,
          ),
          Text(
            "StudyShade",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          )
        ],
      )),
    );
  }
}
