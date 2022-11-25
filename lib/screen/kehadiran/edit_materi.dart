import 'package:flutter/material.dart';

class edit_materi extends StatelessWidget {
  const edit_materi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            child: Card(
              margin: EdgeInsets.all(30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              elevation: 4,
              color: Color.fromARGB(255, 97, 194, 100),
              child: Column(
                children: [
                  SizedBox(
                    width: 370,
                    height: 20,
                  ),
                  Container(
                    child: Text("Edit Materi",
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
        ],
      ),
    );
  }
}
