import 'package:flutter/material.dart';

class Finished extends StatelessWidget {
  final Function restartHandler;
  final int score;
  Finished(this.restartHandler, this.score);

  String get resultText{
    String text = 'Congratulations you have finished your quiz!!';
    String scoreString = score.toString();
    if(score <= 20){
      text += "you are awsome your score is $scoreString";
    } else if(score <= 30){
      text += "you are likeable your score is $scoreString";
    } else {
      text += "you are probaly a bore your score is $scoreString";
    }
    return text;
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              resultText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            RaisedButton(child: Text('Restart Quiz'), onPressed: restartHandler,)
          ],
        ),
      ),
    );
  }
}
