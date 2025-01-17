import 'package:flutter/material.dart';

class NewExpenses extends StatefulWidget {
  const NewExpenses({super.key});

  @override
  _NewExpensesState createState() => _NewExpensesState();
}

class _NewExpensesState extends State<NewExpenses> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }
  // var _enteredTitle = '';
  // void _saveTitleInput(String value) {
  //   _enteredTitle = value;
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            //onChanged: _saveTitleInput,
            maxLength: 50,
            decoration: InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(prefixText: '\$ ', labelText: 'Amount'),
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel')),
              ElevatedButton(
                onPressed: () {
                  //print(_enteredTitle);
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: Text('Save Expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
