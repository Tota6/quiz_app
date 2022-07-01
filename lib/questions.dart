import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Text(
          questionText,
          style: const TextStyle(
              fontSize: 30, color: Color.fromARGB(255, 22, 55, 111)),
          textAlign: TextAlign.center,
        ));
  }
}
