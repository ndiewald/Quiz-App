import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  AnswerButton({
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Text(text),
        onPressed: onPressed,
      ),
    );
  }
}
