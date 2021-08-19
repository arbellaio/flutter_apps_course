import 'package:flutter/material.dart';

class ChartArea extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.deepOrangeAccent,
      child: Container(
        width: double.infinity,
        child: Text(
          'Charts will come here',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

}