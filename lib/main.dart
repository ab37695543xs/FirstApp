import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final int _questionLen = 3;

  void _ansFunc() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  Widget _buildChild() {
    if (_questionIndex < _questionLen) {
      return Quiz(_ansFunc, _questionIndex);
    } else {
      return Result();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _buildChild(),
        ),
      ),
    );
  }
}
