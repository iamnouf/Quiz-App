import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

   const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          questionText,
        style: const TextStyle(fontSize: 20),

      ),
    );
  }
}
