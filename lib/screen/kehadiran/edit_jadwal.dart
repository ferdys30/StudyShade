import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:studyshade_flutter/screen/kehadiran/detailjadwal.dart';
import 'package:studyshade_flutter/screen/kehadiran/jadwal.dart';

class edit_jdwl extends StatefulWidget {
  final List list;
  final int index;
  edit_jdwl({this.list, this.index});
  @override
  State<edit_jdwl> createState() => _edit_jdwlState();
}

class _edit_jdwlState extends State<edit_jdwl> {
  TextEditingController controllermatkul;
  TextEditingController controllerRuang;
  TextEditingController controllerWaktu;
  TextEditingController controllerPembimbing;

  void editData() {
    http.post(Uri.parse("http://192.168.1.3/StudyShade/editjadwal.php"), body: {
      "id": widget.list[widget.index]["id"],
      "matkul": controllermatkul.text,
      "ruang": controllerRuang.text,
      "waktu": controllerWaktu.text,
      "pembimbing": controllerPembimbing.text,
    });
  }

  @override
  void initState() {
    controllermatkul =
        new TextEditingController(text: widget.list[widget.index]["matkul"]);
    controllerRuang =
        new TextEditingController(text: widget.list[widget.index]["ruang"]);
    controllerWaktu =
        new TextEditingController(text: widget.list[widget.index]["waktu"]);
    controllerPembimbing = new TextEditingController(
        text: widget.list[widget.index]["pembimbing"]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Detail "),
        backgroundColor: Color.fromARGB(255, 51, 136, 53),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              new TextField(
                controller: controllermatkul,
                decoration: new InputDecoration(
                  hintText: "Masukkan Mata Pelajaran",
                  labelText: "Mata Pelajaran",
                  icon: Icon(Icons.book),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              new TextField(
                controller: controllerRuang,
                decoration: new InputDecoration(
                  hintText: "Masukkan Ruangan",
                  labelText: "Ruangan",
                  icon: Icon(Icons.home),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              new TextField(
                controller: controllerWaktu,
                decoration: new InputDecoration(
                  hintText: "Masukkan Waktu",
                  labelText: "Waktu",
                  icon: Icon(Icons.timelapse),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              new TextField(
                controller: controllerPembimbing,
                decoration: new InputDecoration(
                  hintText: "Masukkan Nama Pembimbing",
                  labelText: "Nama Pembimbing",
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                ),
              ),
              new Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              new ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 51, 136, 53),
                  onPrimary: Colors.white,
                  shadowColor: Colors.greenAccent,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  minimumSize: Size(170, 60), //////// HERE
                ),
                onPressed: () {
                  editData();
                  Navigator.of(context).pop(new MaterialPageRoute(
                      builder: (BuildContext context) => new jdwl()));
                },
                child: new Text(
                  "Edit Data",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
