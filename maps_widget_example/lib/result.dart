import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var totalScore = 0;
  VoidCallback resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  String get setResultText {
    var resultText = "We are out of questions";

    if (totalScore > 8) {
      resultText = "Wow you get 10 above score";
    }
    if (totalScore > 5 && totalScore < 8) {
      resultText = "Wow you get 5 above score";
    }
    if (totalScore <= 5) {
      resultText = "Wow you get less than or equal to 5 score";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(setResultText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
        TextButton(
            onPressed: resetQuiz,
            child: Text("Reset Quiz",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)))
      ],
    ));
  }
}
