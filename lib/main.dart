// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

var _quesionIndex = 0;

class _MyAppState extends State<MyApp> {
  void answerQuestions() {
    setState(() {
      _quesionIndex += _quesionIndex;
    });
    print(_quesionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what's your fav color? ",
      "what's your name?",
      "what's fav animal?"
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Funny App"),
      ),
      body: Column(children: [
        Question(questions[_quesionIndex]),
        Answer(answerQuestions),
        Answer(answerQuestions),
        Answer(answerQuestions),
      ]),
    ));
  }
}
