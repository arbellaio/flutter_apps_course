import 'package:flutter/material.dart';
import 'package:maps_widget_example/quiz.dart';
import 'package:maps_widget_example/result.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

// underscore in front of name makes it private
class _HomePageState extends State<HomePage> {
  var _questionIndex = 0;
  var _totalScore = 0;
  var _questions = [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 1},
        {'text': 'Blue', 'score': 2},
        {'text': 'Green', 'score': 3}
      ],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        {'text': 'Camel', 'score': 1},
        {'text': 'Goat', 'score': 2},
        {'text': 'Sheep', 'score': 3}
      ],
    },
    {
      'questionText': 'What is your favourite vehicle?',
      'answers': [
        {'text': 'Hyundai', 'score': 1},
        {'text': 'Toyota', 'score': 2},
        {'text': 'Honda', 'score': 3}
      ],
    }
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print("Answer $_questionIndex");
  }

  @override
  Widget build(BuildContext context) {
    // _questions[_questionIndex]['questionText'] as String,

    var scaffold = Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_totalScore, _resetQuiz));

    return MaterialApp(
      home: scaffold,
    );
  }

  void _resetQuiz(){
    setState(() {
      _questionIndex =0;
      _totalScore = 0;
    });

  }
}
