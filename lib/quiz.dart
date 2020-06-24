import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final int _questionIndex;
  final Function _ansFunc;
  final _questionsMap = const [
    {
      'question': 'What\'s your favorite color?',
      'answerList': ['red', 'green', 'blue']
    },
    {
      'question': 'What\'s your favorite animal?',
      'answerList': ['dog', 'cat', 'pig']
    },
    {
      'question': 'What\'s your favorite country?',
      'answerList': ['Taiwan', 'U.S.', 'Japan']
    },
  ];

  Quiz(this._ansFunc, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(_questionsMap[_questionIndex]['question']),
          Answer(_ansFunc, _questionsMap[_questionIndex]['answerList']),
        ],
      ),
    );
  }
}
