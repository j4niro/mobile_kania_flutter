import 'package:flutter/material.dart';

class SelectPeriode extends StatelessWidget {
  final List<Map<String, dynamic>> selectorItems;
  final Function(int, String) onItemClick;

  SelectPeriode({required this.selectorItems, required this.onItemClick});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: selectorItems.asMap().entries.map((entry) {
        int index = entry.key;
        Map<String, dynamic> item = entry.value;
        return GestureDetector(
          onTap: () => onItemClick(index, item['text']),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: item['active'] ? Colors.blue : Colors.grey,
              ),
            ),
            child: Text(item['text']),
          ),
        );
      }).toList(),
    );
  }
}
