import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
