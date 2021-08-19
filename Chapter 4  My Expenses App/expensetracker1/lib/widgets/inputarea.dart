import 'package:expensetracker1/controls/extendedentry.dart';
import 'package:flutter/material.dart';

class InputArea extends StatelessWidget {
  final inputTitleValueController = TextEditingController();
  final inputAmountValueController = TextEditingController();
  final Function callAddTransaction;

  InputArea(this.callAddTransaction);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Card(
            child: Column(
              children: [
                TextField(
                  controller: inputTitleValueController,
                  decoration: InputDecoration(labelText: 'Title'),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                TextField(
                  controller: inputAmountValueController,
                  decoration: InputDecoration(labelText: 'Amount'),
                )
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              callAddTransaction(inputTitleValueController.text, double.parse(inputAmountValueController.text));
              print(inputTitleValueController.text);
              print(inputAmountValueController.text);
            },
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
            ),
            child: Text('Add Transaction'),
          ),
        ],
      ),
    );
  }

  String onChangeTextValue(String value) {
    return value;
  }
}
