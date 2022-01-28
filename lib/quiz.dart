import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final questions;
  final int counter;
  final Function(int score) answerQuestion;

  Quiz(this.questions, this.counter, this.answerQuestion);


  @override
  Widget build(BuildContext context) {

    return  Column(
      children: [
        Question(questions[counter]["queText"].toString()),
        ...(questions[counter]['answers'] as List<Map<String, Object>>).map((answer) => Answer(() => answerQuestion(int.parse(answer['score'].toString())), answer['text'].toString())).toList()
      ],
    );

  }
}
