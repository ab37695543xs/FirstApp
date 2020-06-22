import 'package:flutter/material.dart';

main() => runApp(FirstApp());

class FirstApp extends StatelessWidget {
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
              Text('The questions!'),
              RaisedButton(child: Text('Answer 1'), onPressed: null),
              RaisedButton(child: Text('Answer 2'), onPressed: null),
              RaisedButton(child: Text('Answer 3'), onPressed: null),
            ],
          ),
        ),
      ),
    );
  }
}
