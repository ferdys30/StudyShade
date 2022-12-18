import 'package:flutter/material.dart';
import 'package:studyshade_flutter/screen/login/login.dart';

class splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(
                  Icons.book,
                  size: 100.0,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 24.0,
                ),
                Text("Study Shade",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                Container(
                  child: Column(children: <Widget>[
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 97, 194, 100),
                          onPrimary: Color.fromARGB(255, 71, 128, 72),
                          shadowColor: Colors.greenAccent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          minimumSize: Size(300, 60), //////// HERE
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return login();
                          }));
                        },
                        child: Text(
                          "Continue To Login",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                  ]),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
