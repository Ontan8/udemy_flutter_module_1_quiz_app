import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback buttonFunction;
  final String buttonText;
  Answer(this.buttonFunction, this.buttonText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(buttonText),
        onPressed: buttonFunction,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
      ),
    );
  }
}
