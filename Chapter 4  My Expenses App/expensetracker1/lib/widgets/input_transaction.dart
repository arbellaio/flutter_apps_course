import '../models/transaction.dart';
import '../widgets/expenselist.dart';
import '../widgets/inputarea.dart';
import 'package:flutter/material.dart';

class InputTransaction extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InputTransactionState();
}

class _InputTransactionState extends State<InputTransaction> {

  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'Mobile Phone',
      amount: 2400,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Laptop',
      amount: 3200,
      date: DateTime.now(),
    )
  ];


  void _addNewTransaction(String txTitle, double txAmount){
    final newTx = Transaction(id: DateTime.now().toString(), title: txTitle, amount: txAmount, date: DateTime.now());
    setState(()  {
      _transactions.add(newTx);
    });
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        InputArea(_addNewTransaction),
        ExpenseList(_transactions),
      ],
    );
  }
}
