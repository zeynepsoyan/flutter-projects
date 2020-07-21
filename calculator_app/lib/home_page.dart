import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

// TO DO: different files for each function.

class HomePageState extends State<HomePage> {

  var num1, num2, sum = 0;

  final TextEditingController tf1 = TextEditingController(text: "0");
  final TextEditingController tf2 = TextEditingController(text: "0");

  void doAddition() {
    setState(() {                            // Hot RESTART when changing setState()
      num1 = int.parse(tf1.text);
      num2 = int.parse(tf2.text);
      sum = num1 + num2;
    });
  }

  void doSubstraction() {
    setState(() {
      num1 = int.parse(tf1.text);
      num2 = int.parse(tf2.text);
      sum = num1 - num2;
    });
  }

  void doMultiplication() {
    setState(() {
      num1 = int.parse(tf1.text);
      num2 = int.parse(tf2.text);
      sum = num1 * num2;
    });
  }  

  void doDivision() {
    setState(() {
      num1 = int.parse(tf1.text);
      num2 = int.parse(tf2.text);
      sum = num1 ~/ num2;   // ~/ is for the integer quotient
    });
  }

  void doClear() {
    setState(() {
      tf1.text = "0";
      tf2.text = "0";
      sum = 0;
    });
  }

  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(50),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Output: $sum",
            style: new TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter number 1"
              ),
              controller: tf1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter number 2"
              ),
              controller: tf2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 25),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(               // TO DO: RaisedButton vs MaterialButton
                  child: new Text("+"),         // both can be used here.
                  onPressed: doAddition,
                ),
                new RaisedButton(
                  child: new Text("-"),
                  onPressed: doSubstraction,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 10),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new RaisedButton(
                  child: new Text("*"),
                  onPressed: doMultiplication,
                ),
                new RaisedButton(
                  child: new Text("/"),
                  onPressed: doDivision,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
            new Row(children: <Widget>[
              new RaisedButton(
                child: new Text("Clear"),
                onPressed: doClear,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}