import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class tmbh_kelas extends StatelessWidget {
  TextEditingController controllernik = new TextEditingController();
  TextEditingController controllermapel = new TextEditingController();

  void addData() {
    http.post(Uri.parse("http://192.168.1.3/StudyShade/tambahkelas.php"),
        body: {
          "nik": controllernik.text,
          "id_matkul": controllermapel.text,
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: Text("Tambah Data"),
          backgroundColor: Color.fromARGB(255, 51, 136, 53)),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              new TextField(
                controller: controllernik,
                decoration: new InputDecoration(
                  hintText: "Masukkan NIK Siswa",
                  labelText: "NIK",
                  icon: Icon(Icons.book),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              new TextField(
                controller: controllermapel,
                decoration: new InputDecoration(
                  hintText: "Masukkan ID mata pelajaran",
                  labelText: "ID Mata Pelajaran",
                  icon: Icon(Icons.home),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 10,
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
                  addData();
                  Navigator.pop(context);
                },
                child: new Text(
                  "Tambah Data",
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
