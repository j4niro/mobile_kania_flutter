import 'package:flutter/material.dart';

class SelectorYear extends StatelessWidget {
  final Function(DateTime) onDateChange;

  SelectorYear({required this.onDateChange});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
          initialDatePickerMode: DatePickerMode.year,
        );
        if (pickedDate != null) {
          onDateChange(pickedDate);
        }
      },
      child: Text('Sélectionner une année'),
    );
  }
}
