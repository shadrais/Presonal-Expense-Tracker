import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/user_transaction.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Personal Expense'),
            ),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const <Widget>[
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      color: Colors.blueAccent,
                      elevation: 5,
                      child: Text('Chart'),
                    ),
                  ),
                  UserTransactions()
                ])));
  }
}
