import 'package:flutter/material.dart';
import 'package:studyshade_flutter/screen/kehadiran/datakelas.dart';
import 'package:studyshade_flutter/screen/kehadiran/jadwal.dart';
import 'package:studyshade_flutter/screen/splashscreen.dart';
import 'package:studyshade_flutter/screen/splashscreen2.dart';
import 'login.dart';

class HomeAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 155, 204, 156),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 40.0,
          ),
          Container(
              child: Column(
            children: <Widget>[
              Container(
                height: 140,
                child: Card(
                  shape: RoundedRectangleBorder(),
                  color: Colors.greenAccent.withOpacity(0.5),
                  child: Center(
                    child: Text(
                      "Home Admin",
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                  ),
                  margin: EdgeInsets.all(30),
                ),
              ),
            ],
          )),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
                        minimumSize: Size(200, 75), //////// HERE
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return data_kelas();
                        }));
                      },
                      child: Text(
                        "Jadwal Bimbel",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ]),
              ),
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
                        minimumSize: Size(200, 75), //////// HERE
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return jdwl();
                        }));
                      },
                      child: Text(
                        "Data Pelajaran",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ]),
              ),
            ],
          ),
          SizedBox(
            height: 450,
          ),
          Container(
            child: Column(children: <Widget>[
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 187, 51, 51),
                    onPrimary: Color.fromARGB(255, 155, 104, 104),
                    shadowColor: Colors.redAccent,
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
                    "Keluar",
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
    );
  }
}
