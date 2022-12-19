import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class prsnsi extends StatelessWidget {
  TextEditingController controllernik = new TextEditingController();
  TextEditingController controllerjadwal = new TextEditingController();
  TextEditingController controllerKehadiran = new TextEditingController();
  TextEditingController controllerAlasan = new TextEditingController();

  void addData() {
    http.post(Uri.parse("http://192.168.1.3/StudyShade/presensi.php"), body: {
      "nik_siswa": controllernik.text,
      "id_jdwl": controllerjadwal.text,
      "id_kehadiran": controllerKehadiran.text,
      "alasan": controllerAlasan.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: Text("Presensi"),
          backgroundColor: Color.fromARGB(255, 51, 136, 53)),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              new TextField(
                controller: controllernik,
                decoration: new InputDecoration(
                  hintText: "Masukkan NIM Siswa",
                  labelText: "Masukkan NIM",
                  icon: Icon(Icons.book),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              new TextField(
                controller: controllerjadwal,
                decoration: new InputDecoration(
                  hintText: "Code Jadwal",
                  labelText: "Code Jadwal",
                  icon: Icon(Icons.home),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              new TextField(
                controller: controllerKehadiran,
                decoration: new InputDecoration(
                  hintText: "Code Kehadiran",
                  labelText: "Code Kehadiran",
                  icon: Icon(Icons.timelapse),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              new TextField(
                controller: controllerAlasan,
                decoration: new InputDecoration(
                  hintText: "Masukkan Alasan",
                  labelText: "Masukkan Alasan",
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
