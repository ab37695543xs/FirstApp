import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Question(this._questionIndex);

  final int _questionIndex;
  var _questionList = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _questionList[_questionIndex],
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(10),
      width: double.infinity,
    );
  }
}
