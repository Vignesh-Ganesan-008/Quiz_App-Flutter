import './answer.dart';
import './question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final qa;
  final int qindex;
  final Function questionAnswered;

  Quiz({this.qa, this.qindex, this.questionAnswered});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(qa[qindex]["question"]),
        ...(qa[qindex]["answers"] as List<Map<String, Object>>).map((answer) {
          return Answer(
              () => questionAnswered(answer['score']), answer["option"]);
        }).toList()
      ],
    );
  }
}
