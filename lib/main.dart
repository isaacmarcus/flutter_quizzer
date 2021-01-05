import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
    State<StatefulWidget> createState() {
      return _MyAppState();
    }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex ++;
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Quizzer App!"),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion,),
            RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion,),
            RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion,),
            RaisedButton(child: Text('Answer 4'), onPressed: answerQuestion,),
          ],
        ),  
      ),
    );
  }
}