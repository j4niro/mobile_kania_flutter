import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectorYear extends StatefulWidget {
  final Function(DateTime) onDateChange;

  SelectorYear({required this.onDateChange});

  @override
  _SelectorYearState createState() => _SelectorYearState();
}

class _SelectorYearState extends State<SelectorYear> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  void handleNext() {
    setState(() {
      selectedDate = DateTime(selectedDate.year + 1);
    });
    widget.onDateChange(selectedDate);
  }

  void handlePrev() {
    setState(() {
      selectedDate = DateTime(selectedDate.year - 1);
    });
    widget.onDateChange(selectedDate);
  }

  @override
  Widget build(BuildContext context) {
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
              onPressed: handlePrev,
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
                  setState(() {
                    selectedDate = pickedDate;
                  });
                  widget.onDateChange(selectedDate);
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
                DateFormat('yyyy', 'fr_FR').format(selectedDate),
                textAlign: TextAlign.center,
                style: TextStyle(
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
              onPressed: handleNext,
            ),
          ),
        ],
      ),
    );
  }
}
