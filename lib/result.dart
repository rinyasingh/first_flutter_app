import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);
  String get resultPhrase {
    var resultText = 'Least basic ever. I\'m impressed!';
    if (resultScore == 12) {
      resultText = 'You\'re more basic than Marvel';
    } else if (resultScore < 12 && resultScore > 8) {
      resultText = 'Very basic';
    } else if (resultScore < 8 && resultScore > 6) {
      resultText = 'Less basic than most #hipster';
    } else if (resultScore < 6 && resultScore > 4) {
      resultText = 'So close!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
