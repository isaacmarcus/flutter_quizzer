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
      'answers': [
        {'text':'Black', 'score': 10},
        {'text':'Red', 'score': 5},
        {'text':'Green', 'score': 3},
        {'text':'White', 'score': 2},
      ],
    },
    {
      'questionText':'What\'s your favourite animal?',
      'answers': [
        {'text':'Rabbit', 'score': 10},
        {'text':'Snake', 'score': 5},
        {'text':'Elephant', 'score': 3},
        {'text':'Lion', 'score': 2},
      ],
    },
    {
      'questionText':'What\'s your favourite Superhero?',
      'answers': [
        {'text':'Soaperman', 'score': 10},
        {'text':'Badman', 'score': 5},
        {'text':'Gumbit', 'score': 3},
        {'text':'Brother Bear', 'score': 2},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      setState(() {
        _totalScore += score;
        _questionIndex ++;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
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
          : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}