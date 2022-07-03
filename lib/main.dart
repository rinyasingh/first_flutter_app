import 'package:flutter/material.dart';

import './quiz.dart';
import './answer.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favourite colour?',
      'answers': [
        {'text': 'Red', 'score': 2},
        {'text': 'Black', 'score': 4},
        {'text': 'Purple', 'score': 3},
        {'text': 'Blue', 'score': 3}
      ]
    },
    {
      'questionText': 'Favourite pet?',
      'answers': [
        {'text': 'Hamster', 'score': 2},
        {'text;': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 4},
        {'text': 'Snake', 'score': 1}
      ]
    },
    {
      'questionText': 'Favourite sport?',
      'answers': [
        {'text': 'Soccer', 'score': 5},
        {'text': 'Tennis', 'score': 3},
        {'text': 'Cricket', 'score': 3},
        {'text': 'Rugby', 'score': 4}
      ]
    }
  ];
  var _qIdx = 0;

  void _answerQuestion() {
    setState(() {
      _qIdx += 1;
    });
    print(_qIdx);
    if (_qIdx < _questions.length) {
      print('we have more questions!');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _qIdx < _questions.length
              ? Quiz(_questions, _answerQuestion, _qIdx)
              : Result()),
    );
  }
}
