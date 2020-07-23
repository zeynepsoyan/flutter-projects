import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

Future<void> showMyDialog(BuildContext context, int score) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return CupertinoAlertDialog(
        title: Text(
          'Finished!',
          style: TextStyle(fontSize: 23.0),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text('Your score is: $score', style: TextStyle(fontSize: 15.0)),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Try again',
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          FlatButton(
            child: Text(
              'Main menu',
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
          ),
        ],
      );
    },
  );
}
