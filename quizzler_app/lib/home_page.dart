import 'package:flutter/material.dart';
import 'quiz_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Welcome to Quizzler',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Choose a quiz type:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.teal,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'General Knowledge',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '(15 Questions)',
                      style: TextStyle(
                        color: Colors.teal[100],
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(0),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                color: Colors.lime[800],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Vocabulary',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '(10 Questions)',
                      style: TextStyle(
                        color: Colors.lime[100],
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(1),
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                color: Colors.orange,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Guinness World Records',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '(10 Questions)',
                      style: TextStyle(
                        color: Colors.orange[100],
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizPage(2),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
