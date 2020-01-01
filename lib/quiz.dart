import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<dynamic> questions;
  final int index;
  final Function answerQuestion;

  Quiz(this.questions, this.index, this.answerQuestion);
  int score = 0;
    
  @override
  Widget build(BuildContext context) {
    var currentIndex = Map.from(questions[index]);

    List<Map> answers = currentIndex['answers'];
    var created_answers;
    created_answers = answers.map((answer) {
      return Answer(() => answerQuestion(answer['score']), answer['text'].toString());
    });

    return Container(
      child: Column(
                children: [
                  Question(currentIndex['questionText']),
                  ...created_answers
                ],
              ),
              width: double.infinity,
              margin: EdgeInsets.only(top: 70, left: 20, right: 20),
    );
  }
}