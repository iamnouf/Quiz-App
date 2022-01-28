import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function() x;

   Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText, style: const TextStyle(fontSize: 20, color: Colors.white),),
        onPressed: x,

      ),
    );
  }
}
