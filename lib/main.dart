import 'package:first_app/finished.dart';
import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const questions = [
    {
      'questionText': 'What\'s your favorite colour?',
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'yellow', 'score': 3},
        {'text': 'white', 'score': 2}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dogs', 'score': 10},
        {'text': 'cats', 'score': 5},
        {'text': 'snakes', 'score': 3},
        {'text': 'tigers', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite sport?',
      'answers': [
        {'text': 'tennis', 'score': 10},
        {'text': 'swimming', 'score': 5},
        {'text': 'basketball', 'score': 3},
        {'text': 'Football', 'score': 2}
      ]
    },
  ];

  int index = 0;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    void updateScore(int newScore){
        score += newScore;
    }

    void answerQuestion(int score) {
      setState(() {
        index = index + 1;
        updateScore(score);
      });
    }

    void restartQuiz() {
      setState(() {
        index = 0;
      });
    }

    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: index < (questions.length)
            ? Quiz(questions, index, answerQuestion)
            : Finished(restartQuiz, score),
      ),
    );
  }
}
