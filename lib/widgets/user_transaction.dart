import 'package:flutter/material.dart';

import '../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 13.99, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'Weekly Groceries', amount: 3.99, date: DateTime.now())
  ];

  void _addNewTransaction(String txTitle, String txAmount) {
    final newTx = Transaction(
        amount: double.parse(txAmount),
        title: txTitle,
        date: DateTime.now(),
        id: DateTime.now.toString());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions)
      ],
    ));
  }
}
