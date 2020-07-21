import 'package:flutter/material.dart';

// The main function is the starting point for all out Flutter apps.
void main() {
  runApp(
    MaterialApp(
      // generic app that usually is the base
      home: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        appBar: AppBar(
          title: Text("I Am Rich"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
