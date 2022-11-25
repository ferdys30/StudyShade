import 'package:flutter/material.dart';
import 'package:studyshade_flutter/screen/biodata.dart';
import 'package:studyshade_flutter/screen/edit_biodata.dart';
import 'package:studyshade_flutter/screen/home.dart';
import 'package:studyshade_flutter/screen/kehadiran/izin.dart';
import 'package:studyshade_flutter/screen/kehadiran/jadwal.dart';
import 'package:studyshade_flutter/screen/kehadiran/kehadiran.dart';
import 'package:studyshade_flutter/screen/kehadiran/rekap.dart';
import 'package:studyshade_flutter/screen/login/login.dart';
import 'package:studyshade_flutter/screen/pelajaran/edit_materi.dart';
import 'package:studyshade_flutter/screen/pelajaran/matematika.dart';
import 'package:studyshade_flutter/screen/splashscreen.dart';
import 'package:studyshade_flutter/screen/splashscreen2.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Menu Bantuan Sementara"),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
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
                      // decoration: BoxDecoration(
                      //     boxShadow: [BoxShadow(blurRadius: 25.0)]),
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return bio();
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
                        'Home',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
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
                            borderRadius: BorderRadius.circular(8)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return login();
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
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
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
                      // decoration: BoxDecoration(
                      //     boxShadow: [BoxShadow(blurRadius: 25.0)]),
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: InkWell(
                          onTap: () {},
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
                        'Regist',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
                      // decoration: BoxDecoration(
                      //     boxShadow: [BoxShadow(blurRadius: 25.0)]),
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
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
                            color: Colors.white,
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
                            borderRadius: BorderRadius.circular(8)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return jdwl();
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
                        'Jadwal',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
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
                      // decoration: BoxDecoration(
                      //     boxShadow: [BoxShadow(blurRadius: 25.0)]),
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return prsnsi();
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
                        'Kehadiran',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
                      // decoration: BoxDecoration(
                      //     boxShadow: [BoxShadow(blurRadius: 25.0)]),
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return rekap();
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
                        'Rekap Kehadiran',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
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
                            borderRadius: BorderRadius.circular(8)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return izin();
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
                        'Form Izin',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
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
                      // decoration: BoxDecoration(
                      //     boxShadow: [BoxShadow(blurRadius: 25.0)]),
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: InkWell(
                          onTap: () {},
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
                        'Tambah Materi',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
                      // decoration: BoxDecoration(
                      //     boxShadow: [BoxShadow(blurRadius: 25.0)]),
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return edit_materi();
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
                        'Edit Materi',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
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
                            borderRadius: BorderRadius.circular(8)),
                        child: InkWell(
                          onTap: () {},
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
                        'Tambah Jadwal',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
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
                      // decoration: BoxDecoration(
                      //     boxShadow: [BoxShadow(blurRadius: 25.0)]),
                      child: Card(
                        margin: EdgeInsets.all(2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: InkWell(
                          onTap: () {},
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
                        'Edit Jadwal',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
