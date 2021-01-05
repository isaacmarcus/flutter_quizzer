import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Button pressed");
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
            Text('The question!'),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion,),
            RaisedButton(child: Text('Answer 2'), onPressed: null,),
            RaisedButton(child: Text('Answer 3'), onPressed: null,),
            RaisedButton(child: Text('Answer 4'), onPressed: null,),
          ],
        ),  
      ),
    );
  }
}