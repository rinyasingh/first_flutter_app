
import 'package:flutter/cupertino.dart';

import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int qIdx;
  Quiz (this.questions,this.answerQuestion, this.qIdx);

  @override 
  Widget build (BuildContext ctx) {
    Column(
          children: <Widget>[
            Question(questions[qIdx]['questionText']),
            ...(questions[qIdx]['answers'] as List<Map<String, Object>>).map((answer) {
              return Answer(() =>answerQuestion(answer['score']), answer['text']);
            }).toList()
          ],
        )
  }

}