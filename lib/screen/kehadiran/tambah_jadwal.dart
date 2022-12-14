import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class tmbh_jdwl extends StatelessWidget {
  TextEditingController controllermatkul = new TextEditingController();
  TextEditingController controllerRuang = new TextEditingController();
  TextEditingController controllerWaktu = new TextEditingController();
  TextEditingController controllerPembimbing = new TextEditingController();

  void addData() {
    http.post(Uri.parse("http://192.168.1.3/StudyShade/tambahjadwal.php"),
        body: {
          "matkul": controllermatkul.text,
          "ruang": controllerRuang.text,
          "waktu": controllerWaktu.text,
          "pembimbing": controllerPembimbing.text,
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
