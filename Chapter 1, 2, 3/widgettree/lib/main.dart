import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favourite color?",
      "What is your favourite animal?",
      "What is your favourite vehicle?"
    ];
    void answerQuestion() {
      print("Answered Question");
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First App'),
          ),
          body: Column(
            children: [
              Text('This is a question'),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: answerQuestion,
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => print("Answer 2"),
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print("Answer 3");
                },
              ),
            ],
          )),
    );
  }
}
