import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:studyshade_flutter/screen/kehadiran/tmbhkls.dart';

class data_kelas extends StatelessWidget {
  Future<List> getData() async {
    final response = await http
        .get(Uri.parse("http://192.168.1.3/StudyShade/getdatajadwal.php"));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromARGB(255, 51, 136, 53),
        title: new Text("Jadwal Bimbel"),
      ),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 51, 136, 53),
          child: new Icon(Icons.add),
          onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new tmbh_kelas()))),
      body: new FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? new ItemList(
                  list: snapshot.data,
                )
              : new Center(
                  child: new CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  final List list;
  ItemList({this.list});
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return new ListTile(
            title: new Text("NIM ${list[i]['nik']}"),
            leading: new Icon(Icons.widgets),
            subtitle: new Text("Mata Pelajaran Code ${list[i]['id_matkul']}"),
          );
        });
  }
}
