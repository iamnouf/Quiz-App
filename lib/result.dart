import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function() reset;
  final int score;
  Result(this.reset,this.score);

  String get result{
    String resultText;
    if(score == 30){
      resultText="You are awesome!";
    }else if (score == 20){
      resultText="Pretty likeable!";
    }else{
      resultText="You are so bad!";

    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 240),
      child: Center(
        child: Column(
          children: [
          Text('you get ${score} of 30 ', style: const TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),),
            Text('$result', style: const TextStyle(fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold),),

            TextButton(
                child: const Text('Restart The App !', style: TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold,),),
                onPressed: reset,

            )
          ],
        ),
      ),
    );
  }
}
