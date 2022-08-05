import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;

  TransactionList(this.userTransactions);

  @override
  Widget build(BuildContext context) {
    return (Column(
        children: userTransactions.map((tx) {
      return Card(
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepPurple, width: 2)),
              child: Text(
                '\$${tx.amount}',
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.deepPurple),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tx.title,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 4, 40, 69),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(DateFormat().add_yMMMd().format(tx.date))
              ],
            )
          ],
        ),
      );
    }).toList()));
  }
}
