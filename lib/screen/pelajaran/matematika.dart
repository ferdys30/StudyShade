import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:studyshade_flutter/screen/splashscreen.dart';
import 'package:studyshade_flutter/screen/splashscreen2.dart';

class mtk extends StatelessWidget {
  const mtk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 155, 204, 156),
      body: ListView(children: [
        Container(
          child: Card(
            margin: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 4,
            color: Color.fromARGB(255, 97, 194, 100),
            child: Column(
              children: [
                SizedBox(
                  width: 370,
                  height: 30,
                ),
                Container(
                  child: Text("Matematika",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text("Kelas 12 MIPA",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0))),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Icon(
                    Icons.library_books,
                    color: Color.fromARGB(255, 0, 0, 0),
                    size: 150,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Card(
            margin: EdgeInsets.all(30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 4,
            color: Color.fromARGB(255, 97, 194, 100),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text("Semester 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0))),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
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
                      'Materi',
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
                      'Materi',
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
          height: 20.0,
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
                      'Materi',
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
                      'Materi',
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
                      'Materi',
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
          height: 30,
        ),
        Container(
          child: Card(
            margin: EdgeInsets.all(30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 4,
            color: Color.fromARGB(255, 97, 194, 100),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text("Semester 2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0))),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
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
                      'Materi',
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
                      'Materi',
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
          height: 20.0,
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
                      'Materi',
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
                      'Materi',
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
                      'Materi',
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
      ]),
    );
  }
}
