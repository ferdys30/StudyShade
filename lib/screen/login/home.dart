import 'package:flutter/material.dart';
import 'package:studyshade_flutter/screen/kehadiran/jadwal.dart';
import 'package:studyshade_flutter/screen/pelajaran/bhs_indo.dart';
import 'package:studyshade_flutter/screen/pelajaran/bhs_inggris.dart';
import 'package:studyshade_flutter/screen/pelajaran/biologi.dart';
import 'package:studyshade_flutter/screen/pelajaran/fisika.dart';
import 'package:studyshade_flutter/screen/pelajaran/kimia.dart';
import 'package:studyshade_flutter/screen/pelajaran/matematika.dart';
import 'package:studyshade_flutter/screen/splashscreen.dart';
import 'package:studyshade_flutter/screen/splashscreen2.dart';
import '../kehadiran/jadwaluser.dart';
import 'login.dart';

class Home extends StatelessWidget {
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
                  color: Colors.greenAccent.withOpacity(0.9),
                  child: Center(
                    child: Text(
                      "Kelas 12 ",
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
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return mtk();
                            }));
                          },
                          splashColor: Colors.grey,
                          child: Center(
                            child: Icon(
                              Icons.library_books,
                              color: Colors.blue,
                              size: 70,
                            ),
                            // child: Image.asset(
                            //     'assets/images/Menu-Materi.png'),
                          ),
                        ),
                      ),
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      child: Text(
                        'Matematika',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return kimia();
                            }));
                          },
                          splashColor: Colors.grey,
                          child: Center(
                            child: Icon(
                              Icons.library_books,
                              color: Colors.blue,
                              size: 70,
                            ),
                          ),
                        ),
                      ),
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      child: Text(
                        'Kimia',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return fisika();
                            }));
                          },
                          splashColor: Colors.grey,
                          child: Center(
                            child: Icon(
                              Icons.library_books,
                              color: Colors.blue,
                              size: 70,
                            ),
                            // child: Image.asset(
                            //     'assets/images/Menu-Materi.png'),
                          ),
                        ),
                      ),
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      child: Text(
                        'Fisika',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              // ---------Materi----------
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return biologi();
                            }));
                          },
                          splashColor: Colors.grey,
                          child: Center(
                            child: Icon(
                              Icons.library_books,
                              color: Colors.blue,
                              size: 70,
                            ),
                            // child: Image.asset(
                            //     'assets/images/Menu-Materi.png'),
                          ),
                        ),
                      ),
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      child: Text(
                        'Biologi',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return bhs_ind();
                            }));
                          },
                          splashColor: Colors.grey,
                          child: Center(
                            child: Icon(
                              Icons.library_books,
                              color: Colors.blue,
                              size: 70,
                            ),
                          ),
                        ),
                      ),
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      child: Text(
                        'Bhs Indonesia',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return bhs_ing();
                            }));
                          },
                          splashColor: Colors.grey,
                          child: Center(
                            child: Icon(
                              Icons.library_books,
                              color: Colors.blue,
                              size: 70,
                            ),
                          ),
                        ),
                      ),
                      width: 100,
                      height: 100,
                    ),
                    Container(
                      child: Text(
                        'Bhs Inggris',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 100,
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
                    minimumSize: Size(300, 60), //////// HERE
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return jdwl_user();
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
          SizedBox(
            height: 20,
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
