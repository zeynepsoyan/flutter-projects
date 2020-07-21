import 'package:flutter/material.dart';

void main() {
  runApp(MiCardApp());
}

class MiCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100.0,
                  color: Colors.red,
                ),
                Container(
                  width: 100.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: 100.0,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 100.0,
                        width: 100.0,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100.0,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
