import 'package:flutter/material.dart';
import 'package:studyshade_flutter/screen/login/login.dart';
import 'package:http/http.dart' as http;

class regis extends StatelessWidget {
  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerKelas = new TextEditingController();
  TextEditingController controllerNo_tlp = new TextEditingController();
  TextEditingController controllerUser = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();

  void addData() {
    http.post(Uri.parse("http://192.168.1.3/StudyShade/regis.php"), body: {
      "nama": controllerNama.text,
      "kelas": controllerKelas.text,
      "no_tlp": controllerNo_tlp.text,
      "username": controllerUser.text,
      "password": controllerPass.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Container(
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
                            color: Colors.black)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      controller: controllerNama,
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
                    child: TextField(
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
                    child: TextField(
                      controller: controllerNo_tlp,
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
                    child: TextField(
                      controller: controllerUser,
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
                    child: TextField(
                      controller: controllerPass,
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
                    child: TextField(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 51, 136, 53),
                                onPrimary: Colors.black,
                                shadowColor: Colors.greenAccent,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: Size(150, 50), //////// HERE
                              ),
                              onPressed: () {},
                              child: Text(
                                "Batalkan",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              )),
                        ),
                        Container(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 51, 136, 53),
                                onPrimary: Colors.black,
                                shadowColor: Colors.greenAccent,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: Size(150, 50), //////// HERE
                              ),
                              onPressed: () {
                                addData();
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Registrasi",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              )),
                        ),
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
                                color: Colors.black)),
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
            )
          ],
        ),
      ),
    );
  }
}
