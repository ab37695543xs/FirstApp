import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final List<String> _answerList;
  final Function _ansFunc;

  Answer(this._ansFunc, this._answerList);

  @override
  Widget build(BuildContext context) {
    print(_answerList);
    return Container(
      child: Column(
        children: [
          RaisedButton(
            onPressed: _ansFunc,
            child: Text(_answerList[0]),
            color: Colors.blue,
            textColor: Colors.white,
          ),
          RaisedButton(
            onPressed: _ansFunc,
            child: Text(_answerList[1]),
            color: Colors.blue,
            textColor: Colors.white,
          ),
          RaisedButton(
            onPressed: _ansFunc,
            child: Text(_answerList[2]),
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
