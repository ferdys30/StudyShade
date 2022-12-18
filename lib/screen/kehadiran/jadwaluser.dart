import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'detailjadwaluser.dart';

class jdwl_user extends StatelessWidget {
  Future<List> getData() async {
    final response = await http
        .get(Uri.parse("http://192.168.1.3/StudyShade/getjadwaluser.php"));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromARGB(255, 51, 136, 53),
        title: new Text("Jadwal Bimbel"),
      ),
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
          return Container(
            padding: const EdgeInsets.all(10.0),
            child: new GestureDetector(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new dtl_jdwluser(
                        list: list,
                        index: i,
                      ))),
              child: Card(
                child: new ListTile(
                  title: new Text("Mata Pelajaran ${list[i]['matkul']}"),
                  leading: new Icon(Icons.widgets),
                  subtitle: new Text("Pukul ${list[i]['waktu']}"),
                ),
              ),
            ),
          );
        });
  }
}
