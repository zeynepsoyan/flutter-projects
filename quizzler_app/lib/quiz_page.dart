import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'alert_dialog.dart';

// ignore: must_be_immutable
class QuizPage extends StatefulWidget {
  int index;
  QuizPage(this.index);

  @override
  _QuizPageState createState() => _QuizPageState(index);
}

class _QuizPageState extends State<QuizPage> {
  int index;
  QuizBrain quizBrain;
  _QuizPageState(this.index) : quizBrain = new QuizBrain(index);

  List<Icon> scoreKeeper = [];
  int score = 0;

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if (quizBrain.isFinished() == true) {
        showMyDialog(context, score);
        quizBrain.reset();
        scoreKeeper.clear();
        score = 0;
      } else {
        if (userPickedAnswer == correctAnswer) {
          //TODO: Find out why the first game does not accept 'true' answers (does not add check icons either)
          score++;
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.green,
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {
                  checkAnswer(true);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                color: Colors.red,
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  checkAnswer(false);
                },
              ),
            ),
          ),
          Wrap(
            children: scoreKeeper,
          ),
          SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}
