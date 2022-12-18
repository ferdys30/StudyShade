import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:studyshade_flutter/screen/kehadiran/edit_jadwal.dart';

import 'kehadiran.dart';

class dtl_jdwluser extends StatefulWidget {
  List list;
  int index;
  dtl_jdwluser({this.index, this.list});

  @override
  State<dtl_jdwluser> createState() => _dtl_jdwluserState();
}

class _dtl_jdwluserState extends State<dtl_jdwluser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Detail Jadwal"),
      ),
      body: new Container(
        height: 500,
        padding: const EdgeInsets.all(20.0),
        child: new Card(
            child: new Center(
          child: new Column(children: <Widget>[
            new Padding(padding: const EdgeInsets.only(top: 30)),
            new Text(
              " ${widget.list[widget.index]['matkul']}",
              style: new TextStyle(fontSize: 30),
            ),
            new Text(
              " ${widget.list[widget.index]['id_matkul']}",
              style: new TextStyle(fontSize: 20),
            ),
            new Text(
              " ${widget.list[widget.index]['ruang']}",
              style: new TextStyle(fontSize: 20),
            ),
            new Text(
              " ${widget.list[widget.index]['waktu']}",
              style: new TextStyle(fontSize: 20),
            ),
            new Text(
              " ${widget.list[widget.index]['pembimbing']}",
              style: new TextStyle(fontSize: 20),
            ),
            new Padding(padding: const EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 51, 136, 53),
                        onPrimary: Colors.white,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: Size(150, 50), //////// HERE
                      ),
                      onPressed: () =>
                          Navigator.of(context).push(new MaterialPageRoute(
                            builder: (BuildContext context) => new prsnsi(),
                          )),
                      child: Text(
                        "Absensi",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                ),
              ],
            ),
          ]),
        )),
      ),
    );
  }
}
