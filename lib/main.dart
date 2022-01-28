import 'package:flutter/material.dart';
import 'package:quiz_project/quiz.dart';
import 'package:quiz_project/result.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  int _totalScore = 0;

  void reset() {
    setState(() {
      _counter = 0;
      _totalScore = 0;
    });
  }

   void answerQuestion(int score) {

    setState(() {
      _counter += 1;
      _totalScore += score;

    });
  }

  final _questions = [
    {
      'queText': 'The main circuit board in a computer is',
      'answers': [
        {"text": 'RAM', "score": 0},
        {"text": 'dongle', "score": 0},
        {"text": 'motherboard', "score": 10},
        {"text": 'power supply unit', "score": 0},
      ]
    },
    {
      'queText': 'What does LAN stand for?',
      'answers': [
        {"text": 'Micheal', "score": 0},
        {"text": 'local area network', "score": 10},
        {"text": 'Little actual area', "score": 0},
        {"text": 'Large area network', "score": 0},
      ],
    },

    {
      'queText': 'ROM is?',
      'answers': [
        {"text": 'Read only memory', "score": 10},
        {"text": 'reach on mate', "score": 0},
        {"text": 'Random only memory', "score": 0},
        {"text": 'Raz only mould', "score": 0},
      ],
    },

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz',
      theme: ThemeData(
        fontFamily: 'Lato',
        primarySwatch: Colors.purple,
      ),

      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.pink,
                  Colors.purple,
                ])),
          ),
          title: const Text("Quiz App"),
          centerTitle: true,
        ),

        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10.0),
            child: _counter < _questions.length
                ? Quiz(_questions, _counter, answerQuestion)
                : Result(reset, _totalScore),
          ),
        ),
      ),
    );
  }
}
