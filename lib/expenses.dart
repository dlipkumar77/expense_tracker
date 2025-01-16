import 'package:flutter/material.dart';
import './models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Groceries',
      amount: 50.99,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Taxi',
      amount: 30.69,
      date: DateTime.now(),
      category: Category.travel,
    ),
    Expense(
      title: 'Cinema',
      amount: 20.23,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Laptop',
      amount: 1000.0,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Expenses Tracker',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 22, 2, 60),
      ),
      body: Column(
        children: [
          Text('Expenses chart'),
          Text('Expenses list'),
        ],
      ),
    );
  }
}
