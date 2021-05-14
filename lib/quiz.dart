import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final questions;
  final Function answerQuestion;

  const Quiz({
    @required this.questionIndex,
    @required this.questions,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Question(questions[questionIndex]['question']),
          height: 120,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((Map answer) {
          return AnswerButton(
            text: answer['text'],
            onPressed: () => answerQuestion(score: answer['score']),
          );
        }).toList(),
      ],
    );
  }
}
