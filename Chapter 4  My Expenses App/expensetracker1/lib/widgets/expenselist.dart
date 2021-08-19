import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class ExpenseList extends StatelessWidget {

  final List<Transaction> _transactions;

  ExpenseList(this._transactions);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 300,
        child: SingleChildScrollView(
            child: Column(
              children: _transactions.map((tx) {
                return Card(
                  elevation: 20,
                  margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Row(children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 2),
                      ),
                      margin: EdgeInsets.all(5),
                      child: Text(
                        '\$${tx.amount}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                          child: Text(
                            tx.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 20),
                          child: Text(
                            // DateFormat('dd/MM/yyyy').format(tx.date),
                            DateFormat.yMMMd().format(tx.date),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
                );
              }).toList(),
            ),
        )
    );
  }
}
