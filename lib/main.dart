// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

var quesionIndex = 0;

class MyApp extends StatelessWidget {
  void answerQuestions() {
    quesionIndex += quesionIndex;
    print(quesionIndex);
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
        Text(questions[quesionIndex]),
        ElevatedButton(
          onPressed: answerQuestions,
          child: const Text('Answer 1'),
        ),
        ElevatedButton(
          onPressed: answerQuestions,
          child: const Text('Answer 2'),
        ),
        ElevatedButton(
          onPressed: answerQuestions,
          child: const Text('Answer 3'),
        )
      ]),
    ));
  }
}
