import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[400],
      appBar: AppBar(
        title: Center(
          child: Text('Ask Me Anything'),
        ),
        backgroundColor: Colors.deepPurple[700],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  String answer = 'WELCOME';
  List<String> answers = [
    'AS I SEE IT, YES.',
    'ASK AGAIN LATER.',
    'BETTER NOT TELL YOU NOW.',
    'CANNOT PREDICT NOW.',
    'CONCENTRATE AND ASK AGAIN.',
    'DON’T COUNT ON IT.',
    'IT IS CERTAIN.',
    'IT IS DECIDEDLY SO.',
    'MOST LIKELY.',
    'MY REPLY IS NO.',
    'MY SOURCES SAY NO.',
    'OUTLOOK NOT SO GOOD.',
    'OUTLOOK GOOD.',
    'REPLY HAZY, TRY AGAIN.',
    'SIGNS POINT TO YES.',
    'VERY DOUBTFUL.',
    'WITHOUT A DOUBT.',
    'YES.',
    'YES – DEFINITELY.',
    'YOU MAY RELY ON IT.'
  ];

  void replyBall() {
    setState(() {
      answer = answers[Random().nextInt(19)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Image.asset('images/magicball.png'),
            Container(
              height: 120.0,
              width: 120.0,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '$answer',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
        onPressed: replyBall,
      ),
    );
  }
}
