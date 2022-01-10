import 'package:flutter/material.dart';
import 'package:module_1/exhausted.dart';
import 'package:module_1/quiz.dart';

// ignore_for_file: prefer_const_constructors
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int totalScore = 0;
  void funcc(int score) {
    totalScore += score;
    setState(() {
      questionIndex++;
    });
    print('this is a function inside a class');
    print(questionIndex);
  }

  void goBack() {
    if (questionIndex > 0) {
      setState(() {
        questionIndex--;
      });
      print('navigated to the previous question');
    }
  }

  void reset() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  int questionIndex = 0;
  var questions = const [
    {
      'questionText': 'What do you prefer, cat or dog?',
      'answers': [
        {'text': 'cat', 'score': 100},
        {'text': 'cat', 'score': 12},
        {'text': 'cat', 'score': 90},
        {'text': 'cat again', 'score': 30},
      ]
    },
    {
      'questionText': 'What do you think about genshin impact?',
      'answers': [
        {'text': 'its shit', 'score': 100},
        {'text': 'its trash', 'score': 50},
        {'text': 'its really bad', 'score': 30},
        {'text': 'eula is the game\'s only saving grace', 'score': 800},
      ],
    },
    {
      'questionText': 'is eula the best character in genshin impact?',
      'answers': [
        {'text': 'yes', 'score': 1000},
        {'text': 'yeah', 'score': 200},
        {'text': 'no; doubt about it', 'score': 900},
        {'text': 'one hundred percent', 'score': 1200},
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('monkey see monkey do'),
            ),
            body: questionIndex >= questions.length
                ? Exhausted(
                    'You\'ve exhausted the availabe number of questions',
                    totalScore,
                    reset)
                : Quiz(questions, questionIndex, funcc, goBack)));
  }
}
