import 'package:flutter/material.dart';
import 'package:maps_widget_example/answer.dart';
import 'package:maps_widget_example/question.dart';


void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

// underscore infront of name makes it private
class _HomePageState extends State<HomePage> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print("Answer $_questionIndex");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favourite color?",
      "What is your favourite animal?",
      "What is your favourite vehicle?"
    ];


    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First App'),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex],),
              Answer('Answer 1', _answerQuestion),
              Answer('Answer 2', _answerQuestion),
              Answer('Answer 3', _answerQuestion),
            ],
          )),
    );
  }
}
