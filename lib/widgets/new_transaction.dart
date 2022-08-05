import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final amountController = TextEditingController();
  final titleController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          TextField(
            decoration: const InputDecoration(labelText: 'Title'),
            controller: titleController,
          ),
          TextField(
            controller: amountController,
            decoration: const InputDecoration(
              labelText: 'Amount',
            ),
          ),
          ElevatedButton(
              onPressed: () =>
                  {addTx(titleController.text, amountController.text)},
              child: const Text('Add Transaction'))
        ]),
      ),
    );
  }
}
