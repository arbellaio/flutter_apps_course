import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favourite color?",
      "What is your favourite animal?",
      "What is your favourite vehicle?"
    ];
    void _answerQuestion(int questionNo) {
      print("Answer $questionNo");
      setState(() {
        _questionIndex += 1;
      });
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First App'),
          ),
          body: Column(
            children: [
              Text(questions[_questionIndex], textAlign: TextAlign.center, style: TextStyle(color: Colors.red, fontSize: 23,),),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: () {
                  _answerQuestion(1);
                },
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () {
                  _answerQuestion(2);
                },
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  _answerQuestion(3);
                },
              ),
            ],
          )),
    );
  }
}
