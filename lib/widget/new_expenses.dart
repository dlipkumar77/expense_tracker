import 'package:flutter/material.dart';

class NewExpenses extends StatefulWidget {
  const NewExpenses({super.key});

  @override
  _NewExpensesState createState() => _NewExpensesState();
}

class _NewExpensesState extends State<NewExpenses> {
  var _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
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
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  //print(_enteredTitle);
                  print(_titleController.text);
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
