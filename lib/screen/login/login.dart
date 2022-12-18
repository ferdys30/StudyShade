import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:studyshade_flutter/screen/login/register.dart';
import 'package:studyshade_flutter/screen/login/home.dart';
import 'package:studyshade_flutter/screen/login/homeadmin.dart';

Widget build(BuildContext context) {
  return new MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '../login/homeadmin': (BuildContext context) => new HomeAdmin(),
      '../login/home': (BuildContext context) => new Home(),
    },
  );
}

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  String msg = '';

  Future<List> _login() async {
    final response = await http
        .post(Uri.parse("http://192.168.1.3/StudyShade/login.php"), body: {
      "username": user.text,
      "password": pass.text,
    });
    var datauser = json.decode(response.body);

    if (datauser.length == 0) {
      setState(() {
        msg = " Login Failed";
      });
    } else {
      if (datauser[0]['id_role'] == '1') {
        print("Admin");
      } else if (datauser[0]['id_role'] == '2') {
        print("User");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                ),
                Container(
                  child: Icon(
                    Icons.book,
                    size: 100.0,
                    color: Colors.black,
                  ),
                ),
                Container(
                  child: Text("Study Shade",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: user,
                    decoration: new InputDecoration(
                      hintText: "masukan Username",
                      labelText: "Username",
                      icon: Icon(Icons.people),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(8.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: pass,
                    obscureText: true,
                    decoration: new InputDecoration(
                      hintText: "masukan Password",
                      labelText: "Password",
                      icon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 108, 214, 110),
                            onPrimary: Colors.black,
                            shadowColor: Colors.greenAccent,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                            minimumSize: Size(200, 60), //////// HERE
                          ),
                          onPressed: () {
                            _login();
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomeAdmin();
                            }));
                          },
                          child: Text(
                            " LOGIN",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Belum Punya akun?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return regis();
                          }));
                        },
                        child: Text("Sign In"),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Text(
                  msg,
                  style: TextStyle(fontSize: 20.0, color: Colors.red),
                ),
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
