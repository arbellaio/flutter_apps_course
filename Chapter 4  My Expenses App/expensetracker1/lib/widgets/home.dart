import 'package:expensetracker1/widgets/chartarea.dart';
import 'package:expensetracker1/widgets/expenselist.dart';
import 'package:expensetracker1/widgets/input_transaction.dart';
import 'package:expensetracker1/widgets/inputarea.dart';

import '../models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ChartArea(),
        InputTransaction(),
      ],
    );
  }
}
