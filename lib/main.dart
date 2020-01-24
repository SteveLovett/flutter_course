import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0; //classwide variables are known as properties

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  final List<Map<String, dynamic>> questions = [
    {
      'questionText': 'What is your quest?',
      'answerText': [
        'I seek the Black Knight!',
        'I seek the Holy Hand Grenade!',
        'I seek the Holy Grail!',
      ]
    },
    {
      'questionText': 'What is your favorite color?',
      'answerText': ['Blue', 'Blue, no Green!', 'What?']
    },
    {
      'questionText':
          'What is the average airspeed velocity of an unladen swallow',
      'answerText': [
        '43 beats per second.',
        '86 beats per second.',
        'What do you mean? African or European swallow?'
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answerText'] as List<String>)
                .map((answer) {
              return Answer(selectHandler: _answerQuestion, answerText: answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
