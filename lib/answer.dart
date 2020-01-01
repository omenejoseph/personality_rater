import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String buttonText;
  Answer(this.answerQuestion, this.buttonText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
              child: Text(buttonText),
              textColor: Colors.white,
              onPressed: answerQuestion,
              color: Colors.blue,
            ),
    );
  }
}