import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final VoidCallback selecthandeler;
  Answer(this.selecthandeler);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: selecthandeler,
          child: Text('Answer 1'),
        ));
  }
}
