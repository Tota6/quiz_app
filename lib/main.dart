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

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final questions = const [
      {
        'questionText': "what is your fav color? ",
        'answers': [
          {Text: 'Red', 'score': "3"},
          {Text: 'Orange', 'score': "10"},
          {Text: 'Green', 'score': "1"},
          {Text: 'Blue', 'score': "5"}
        ],
      },
      {
        'questionText': "what's your name?",
        'answers': [
          {Text: 'Martina', 'score': "0"},
          {Text: 'Mina', 'score': "1"},
          {Text: 'Micheal', 'score': "5"},
          {Text: 'Mano', 'score': "7"}
        ],
      },
      {
        'questionText': "what's fav animal?",
        'answers': [
          {Text: 'Cat', 'score': "1"},
          {Text: 'Dog', 'score': "10"},
          {Text: 'Rabbit', 'score': "8"},
          {Text: 'Monkey', 'score': "3"}
        ],
      }
    ];
    var quesionIndex = 0;
    void __answerQuestions() {
      setState(() {
        quesionIndex = quesionIndex + 1;
      });
      print(quesionIndex);
      if (quesionIndex < questions.length) {
        print('we have more questions');
      } else {
        print('No more questions');
      }
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Funny App"),
      ),
      body: quesionIndex < questions.length
          ? Column(children: [
              Question(questions[quesionIndex]['questionText'] as String),
              ...((questions[quesionIndex]['answers']) as List<String>)
                  .map((answer) {
                return Answer(__answerQuestions, answer);
              }).toList()
            ])
          : const Center(child: Text('you did it')),
    ));
  }
}
