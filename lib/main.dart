import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _counter = 0;
  var _totalScore = 0;
  var _totalGet = 0;
  var _scrPerWnQn = 1;

  final _question = const [
    {
      "questionText": "What is after A?",
      "answers": [
        {"text": "A", "score": 1, "isCorrect": false},
        {"text": "C", "score": 1, "isCorrect": false},
        {"text": "B", "score": 1, "isCorrect": true},
        {"text": "T", "score": 1, "isCorrect": false}
      ],
    },
    {
      "questionText": "What is after W?",
      "answers": [
        {"text": "Y", "score": 1, "isCorrect": false},
        {"text": "D", "score": 1, "isCorrect": false},
        {"text": "X", "score": 1, "isCorrect": true},
        {"text": "Z", "score": 1, "isCorrect": false}
      ],
    },
    {
      "questionText": "Is G a Vowel?",
      "answers": [
        {"text": "yes", "score": 1, "isCorrect": false},
        {"text": "no", "score": 1, "isCorrect": true}
      ],
    }
  ];

  void _reset() {
    setState(() {
      _totalScore = _question.length * _scrPerWnQn;
      _counter = 0;
      _totalGet = 0;
    });
  }

  void _onPressHandle(int scr, bool cop) {
    if (_counter < _question.length) {
      setState(() {
        if (cop) {
          _totalGet += scr;
          print("Correct! +1");
        } else {
          print("Wrong! +0");
        }
        _counter++;
      });
    } else {
      print("All question done!");
    }
  }

  @override
  Widget build(BuildContext context) {
    // var _questionOLD = [
    //   "What is your favourit color?",
    //   "What would you like to eat most?"
    // ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: _counter < _question.length
            ? Quiz(_question, _counter, _onPressHandle)
            : Result(_totalScore, _totalGet, _reset),
      ),
    );
  }
}
