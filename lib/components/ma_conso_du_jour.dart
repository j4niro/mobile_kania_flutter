import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MaConsoJour extends StatelessWidget {
  final DateTime selectedDate;
  final String selectedType;

  MaConsoJour({required this.selectedDate, required this.selectedType});

  String formatDate(DateTime date, String type) {
    if (type == 'Jour') {
      return DateFormat('dd MMMM yyyy', 'fr_FR').format(date);
    } else if (type == 'Mois') {
      return DateFormat('MMMM yyyy', 'fr_FR').format(date);
    } else if (type == 'Année') {
      return DateFormat('yyyy', 'fr_FR').format(date);
    }
    return '';
  }

  String getTitleText(String type) {
    if (type == 'Jour') {
      return 'Ma consommation du';
    } else {
      return 'Ma consommation de';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '${getTitleText(selectedType)} ${formatDate(selectedDate, selectedType)}',
      style: TextStyle(fontSize: 20),
    );
  }
}
