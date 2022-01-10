import 'package:flutter/material.dart';

//ignore_for_file: prefer_const_constructors
class Exhausted extends StatelessWidget {
  final String message;
  final int totalScore;
  final VoidCallback reset;
  Exhausted(this.message, this.totalScore, this.reset);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            '$message\nThe total score achieved was: $totalScore',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
              margin: EdgeInsets.all(15),
              child: Center(
                  child: ElevatedButton(
                onPressed: reset,
                child: Text('Reset the Quiz'),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.pink),
                    foregroundColor: MaterialStateProperty.all(Colors.black)),
              )))
        ],
      ),
    );
  }
}
