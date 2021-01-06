import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  final _questions = const [
    {
      'questionText':'What\'s your favourite color?',
      'answers': ['Black','Red','Green','White'],
    },
    {
      'questionText':'What\'s your favourite animal?',
      'answers': ['Rabbit','Snake','Elephant','Lion'],
    },
    {
      'questionText':'What\'s your favourite Superhero?',
      'answers': ['Soaperman','Badman','Gumbit','Brother Bear'],
    },
    ];

  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex ++;
      });
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Quizzer App!"),
        ),
        body: _questionIndex < _questions.length 
          ? Quiz(
            questions: _questions,
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex
            )
          : Result(),  
      ),
    );
  }
}