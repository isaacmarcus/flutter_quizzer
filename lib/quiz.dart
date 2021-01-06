import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({@required this.questions,@required this.answerQuestion,@required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        // the "..." splits a list into its individual elements and lines them up
        // ".map" takes an existing map's key's elements and maps them to a list 
        // that is returned in the bracket pointer
        // important to use as List as dart does not know what you are mapping with otherwise
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}