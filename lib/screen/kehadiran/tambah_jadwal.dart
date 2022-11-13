import 'package:flutter/material.dart';
import 'package:studyshade_flutter/screen/splashscreen.dart';
import 'package:studyshade_flutter/screen/splashscreen2.dart';

class tmbh_jdwl extends StatelessWidget {
  const tmbh_jdwl({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            "Tambah Jadwal",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
