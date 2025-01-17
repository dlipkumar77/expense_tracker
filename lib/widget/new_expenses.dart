import 'package:flutter/material.dart';
import '/models/expense.dart';

class NewExpenses extends StatefulWidget {
  const NewExpenses({super.key});

  @override
  _NewExpensesState createState() => _NewExpensesState();
}

class _NewExpensesState extends State<NewExpenses> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _seletedDate;

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

  void _presentDatePicker() async {
    var now = DateTime.now();
    var firstDate = DateTime(now.year - 1, now.month, now.day);
    var pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: now,
    );
    setState(() {
      _seletedDate = pickedDate;
    });
  }

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
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(prefixText: '\$ ', labelText: 'Amount'),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(_seletedDate == null
                        ? 'No Date Selected'
                        : formatter.format(_seletedDate!)),
                    IconButton(
                      onPressed: _presentDatePicker,
                      icon: Icon(Icons.calendar_month),
                    ),
                  ],
                ),
              )
            ],
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
