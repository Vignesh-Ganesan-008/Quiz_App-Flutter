import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

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
  var _qindex = 0;
  int _totalScore = 0;
  final _qa = const [
    {
      "question": "What's your favourite color?",
      "answers": [
        {"option": "Blue", "score": 9},
        {"option": "Green", "score": 5},
        {"option": "Red", "score": 3},
        {"option": "Black", "score": 1}
      ]
    },
    {
      "question": "What's your favourite Animal?",
      "answers": [
        {"option": "Bird", "score": 9},
        {"option": "Lion", "score": 5},
        {"option": "Cat", "score": 3},
        {"option": "Dog", "score": 1}
      ]
    },
    {
      "question": "What's your favourite Game?",
      "answers": [
        {"option": "Overwatch", "score": 9},
        {"option": "Seige", "score": 5},
        {"option": "Valorant", "score": 3},
        {"option": "CS:GO", "score": 1}
      ]
    },
  ];

  void _questionAnswered(int score) {
    if (_qindex < _qa.length) {
      print("You have more questions");
    } else {
      print("No more questions");
    }
    setState(() {
      _qindex++;
    });
    print("Answered");
    _totalScore += score;
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _qindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Let me know about you"),
      ),
      body: _qindex < _qa.length
          ? Quiz(
              qa: _qa,
              qindex: _qindex,
              questionAnswered: _questionAnswered,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
