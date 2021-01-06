import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resetQuiz;

  Result(this.result, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (result <= 8) {
      resultText = "You are awesome & innocent!";
    } else if (result <= 12) {
      resultText = "Pretty likeable!";
    } else if (result <= 16) {
      resultText = "You are cool & W3irD";
    } else {
      resultText = 'OMAI WA SHINDEIRU';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetQuiz, child: Text('Restart Quiz!'), color: Colors.blueAccent,)
        ],
      ),
    );
  }
}
