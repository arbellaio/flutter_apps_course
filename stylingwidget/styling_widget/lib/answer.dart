import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final VoidCallback selectHandler;

  Answer(this._answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue.shade50,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(_answerText),
        onPressed: selectHandler,
      ),
    );
  }

}
