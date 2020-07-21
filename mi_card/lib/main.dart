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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "zeynep hazal soyan",
                style: TextStyle(
                  fontFamily: "Berkshire Swash",
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "STUDENT",
                style: TextStyle(
                    fontFamily: "Open Sans",
                    fontSize: 17,
                    color: Colors.teal[100],
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
                width: 100.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.teal[300]),
                  title: Text(
                    "+90 505 795 3515",
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.teal[300]),
                  title: Text(
                    "zeynepsoyan@gmail.com",
                    style: TextStyle(
                      color: Colors.teal[900],
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
