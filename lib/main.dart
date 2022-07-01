// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        const Text("the questions"),
        ElevatedButton(
          child: Text('Answer 1'),
          onPressed: () {},
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Answer 2'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Answer 3'),
        )
      ]),
    ));
  }
}
