import 'package:flutter/material.dart';

class SelectPeriode extends StatelessWidget {
  final List<Map<String, dynamic>> selectorItems;
  final Function(int, String) onItemClick;
  final double width;

  SelectPeriode({required this.selectorItems, required this.onItemClick, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      width: width,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3.0),
        border: Border.all(color: Color(0XFFFF7900)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: selectorItems.map((item) {
          return GestureDetector(
            onTap: () => onItemClick(selectorItems.indexOf(item), item['text']),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                //border: Border.all(color: Colors.orangeAccent),
                color: item['active'] ? Colors.black : Colors.white,
              ),
              child: Text(
                item['text'],
                style: TextStyle(
                  fontSize: 14.0,
                  //fontFamily: 'Arial, Helvetica, sans-serif',
                  fontWeight: item['active'] ? FontWeight.bold : FontWeight.normal,
                  color: item['active'] ? Colors.white : Colors.black,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
