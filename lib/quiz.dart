import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function funcc;
  final VoidCallback goBack;
  Quiz(this.questions, this.questionIndex, this.funcc, this.goBack);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'].toString(),
        ),
        for (var i in (questions[questionIndex]['answers']
            as List<Map<String, Object>>))
          Answer(() => funcc(i['score']), i['text']),
        Container(
          margin: EdgeInsets.all(40),
          alignment: Alignment.bottomLeft,
          child: ElevatedButton(
            onPressed: goBack,
            child: Text('Prev'),
          ),
        )
      ],
    );
  }
}
        // ...(questions[questionIndex]['answers'] as List<String>).map((ans) {
        //   return Answer(funcc, ans);
        // }).toList(),