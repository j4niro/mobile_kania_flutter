import 'package:flutter/material.dart';

class SelectorSite extends StatelessWidget {
  final List<String> options;
  final Function(String) onSelectChange;

  SelectorSite({required this.options, required this.onSelectChange});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: options[0],
      onChanged: (String? newValue) {
        if (newValue != null) {
          onSelectChange(newValue);
        }
      },
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
