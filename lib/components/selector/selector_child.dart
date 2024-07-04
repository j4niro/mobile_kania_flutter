import 'package:flutter/material.dart';

class SelectorChild extends StatelessWidget {
  final Function(DateTime) onDateChange;

  SelectorChild({required this.onDateChange});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
        );
        if (pickedDate != null) {
          onDateChange(pickedDate);
        }
      },
      child: Text('Sélectionner une date'),
    );
  }
}
