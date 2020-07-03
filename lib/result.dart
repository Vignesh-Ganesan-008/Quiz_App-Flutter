import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function fun;

  Result(this.score, this.fun);

  String get yourPersonality {
    String resulttext;
    if (score <= 10) {
      resulttext = "You are good";
    } else {
      resulttext = "You are bad";
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Center(
        child: Text(
          yourPersonality,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      FlatButton(
          onPressed: fun,
          child: Text(
            "Reset Quiz",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ))
    ]);
  }
}
