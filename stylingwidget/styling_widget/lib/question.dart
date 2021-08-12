import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin:EdgeInsets.all(10),
        padding:EdgeInsets.fromLTRB(0,20,0,0),
        child: Text(
          _questionText,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.deepOrange, fontSize: 24),
        ));
  }
}
