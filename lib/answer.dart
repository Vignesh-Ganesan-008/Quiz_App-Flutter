import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function fun;
  final String aText;

  Answer(this.fun, this.aText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(aText),
        onPressed: fun,
        color: Colors.blue,
        textColor: Colors.white,
      ),
      width: double.infinity,
    );
  }
}
