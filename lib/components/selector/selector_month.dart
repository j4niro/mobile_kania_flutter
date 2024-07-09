import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Pour formater les dates

class SelectorMonth extends StatelessWidget {
  final Function(DateTime) onDateChange;

  SelectorMonth({required this.onDateChange});

  void handleNext(DateTime date) {
    DateTime nextDate = DateTime(date.year, date.month + 1);
    onDateChange(nextDate);
  }

  void handlePrev(DateTime date) {
    DateTime prevDate = DateTime(date.year, date.month - 1);
    onDateChange(prevDate);
  }

  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0XFFFF7900)),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: IconButton(
              icon: Icon(Icons.chevron_left),
              onPressed: () => handlePrev(selectedDate),
            ),
          ),
          SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                initialDatePickerMode: DatePickerMode.year,
              ).then((pickedDate) {
                if (pickedDate != null) {
                  onDateChange(pickedDate);
                }
              });
            },
            child: Container(
              width: width * 0.4,
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0XFFFF7900)),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                DateFormat('MMMM yyyy', 'fr_FR').format(selectedDate),
                textAlign: TextAlign.center,
                style: TextStyle(
                  //fontFamily: 'Arial, Helvetica, sans-serif',
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
          SizedBox(width: 5),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Color(0XFFFF7900)),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: IconButton(
              icon: Icon(Icons.chevron_right),
              onPressed: () => handleNext(selectedDate),
            ),
          ),
        ],
      ),
    );
  }
}
