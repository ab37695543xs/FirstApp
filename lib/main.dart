import 'package:flutter/material.dart';
import './question.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _answerFunction() {
    setState(() {
      _questionIndex = (_questionIndex >= 1) ? 0 : _questionIndex + 1;
    });
    print(_questionIndex);
  }

  int _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('First App'),
          ),
          body: Column(
            children: [
              Question(_questionIndex),
              RaisedButton(child: Text('Answer 1'), onPressed: _answerFunction),
              RaisedButton(child: Text('Answer 2'), onPressed: _answerFunction),
              RaisedButton(child: Text('Answer 3'), onPressed: _answerFunction),
            ],
          ),
        ),
      ),
    );
  }
}
