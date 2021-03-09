import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int counter;
  final Function onPressHandle;
  Quiz(this.question, this.counter, this.onPressHandle);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(question[counter]['questionText']),
      ...(question[counter]["answers"] as List<Map<String,Object>>).map((ans) {
        return Answer(onPressHandle, ans['text'], ans['isCorrect'], ans['score']);
      }).toList(),
    ]);
  }
}
