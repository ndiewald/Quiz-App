import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  Result({this.score, this.resetQuiz});

  String get resultPhrase {
    if (score <= 4) {
      return 'You are the perfect human being!';
    }

    if (score <= 8) {
      return 'Just a normal guy I think';
    }

    return 'You are a bunch of Shit!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Your score is: $score',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          OutlinedButton(
            onPressed: resetQuiz,
            child: Text('Reset Quiz'),
          )
        ],
      ),
    );
  }
}
