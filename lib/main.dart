import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void answerFunction() {
    setState(() {
      _questionIndex = (_questionIndex >= 1) ? 0 : _questionIndex + 1;
    });
    print(_questionIndex);
  }

  var _questionIndex = 0;
  var _questionList = [
    'What\'s your favorite color?',
    'What\'s your favorit animal?',
  ];

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
              Text(_questionList[_questionIndex]),
              RaisedButton(child: Text('Answer 1'), onPressed: answerFunction),
              RaisedButton(child: Text('Answer 2'), onPressed: answerFunction),
              RaisedButton(child: Text('Answer 3'), onPressed: answerFunction),
            ],
          ),
        ),
      ),
    );
  }
}
