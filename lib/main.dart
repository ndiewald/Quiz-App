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
  int _score = 0;
  int _questionIndex = 0;
  final _questions = const [
    {
      'question': 'What is your favorite programming language?',
      'answers': [
        {'text': 'JavaScript', 'score': 1},
        {'text': 'Dart', 'score': 2},
        {'text': 'PHP', 'score': 6},
        {'text': 'Java', 'score': 5},
        {'text': 'C / C++', 'score': 4},
        {'text': 'Kotlin', 'score': 3},
      ],
    },
    {
      'question': 'What is your favorite Framework?',
      'answers': [
        {'text': 'Flutter', 'score': 2},
        {'text': 'Node.js', 'score': 1},
        {'text': 'Symfony', 'score': 4},
        {'text': 'Angular', 'score': 3},
      ],
    },
    {
      'question': 'What is your favorite IDE?',
      'answers': [
        {'text': 'VS Code', 'score': 1},
        {'text': 'PHPStorm', 'score': 2},
        {'text': 'Android Studio', 'score': 3},
      ],
    }
  ];

  void _answerQuestion({int score}) {
    setState(() {
      _questionIndex++;
      _score += score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Flutter'),
          backgroundColor: Colors.blue,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQuestion: _answerQuestion,
              )
            : Result(
                score: _score,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
