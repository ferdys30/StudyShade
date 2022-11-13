import 'package:flutter/material.dart';
import 'package:studyshade_flutter/screen/splashscreen.dart';
import 'package:studyshade_flutter/screen/splashscreen2.dart';
import 'package:studyshade_flutter/screen/login/login.dart';

class regis extends StatelessWidget {
  const regis({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            child: Card(
              margin: EdgeInsets.all(30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4,
              color: Color.fromARGB(255, 150, 209, 152),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text("Registrasi",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    child: TextFormField(
                      decoration: new InputDecoration(
                        hintText: "masukan nama lengkap anda",
                        labelText: "Nama Lengkap",
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
                      decoration: new InputDecoration(
                        hintText: "Masukkan NIK",
                        labelText: "NIK",
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
                      decoration: new InputDecoration(
                        hintText: "Masukkan Tanggal Lahir",
                        labelText: "Tanggal Lahir",
                        icon: Icon(Icons.date_range),
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
                      decoration: new InputDecoration(
                        hintText: "Masukkan No Telephone",
                        labelText: "Telephone",
                        icon: Icon(Icons.phone),
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
                      decoration: new InputDecoration(
                        hintText: "Masukkan Username",
                        labelText: "Username",
                        icon: Icon(Icons.person),
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
                      obscureText: true,
                      decoration: new InputDecoration(
                        hintText: "Password",
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
                    width: 300,
                    child: TextFormField(
                      obscureText: true,
                      decoration: new InputDecoration(
                        hintText: "masukan Ulang Password lengkap anda",
                        labelText: "Re-Password ",
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 51, 136, 53),
                              onPrimary: Colors.white,
                              shadowColor: Colors.greenAccent,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)),
                              minimumSize: Size(200, 50), //////// HERE
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return login();
                              }));
                            },
                            child: Text(
                              "Regist",
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
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
                        Text("Sudah Memiliki akun?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Log In"),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
