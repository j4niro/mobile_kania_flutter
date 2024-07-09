import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Importez pour formater les dates
import 'package:intl/date_symbol_data_local.dart';

class MaConsoJour extends StatelessWidget {
  final DateTime selectedDate;
  final String selectedType;

  MaConsoJour({required this.selectedDate, required this.selectedType});

  String formatDate(DateTime date, String type) {
    switch (type) {
      case 'Jour':
        return DateFormat('dd MMMM yyyy', 'fr_FR').format(date); // Format selon vos besoins
      case 'Mois':
        return DateFormat('MMMM yyyy', 'fr_FR').format(date);
      case 'Année':
        return DateFormat('yyyy', 'fr_FR').format(date);
      default:
        return '';
    }
  }

  String getTitleText(String type) {
    return type == 'Jour' ? 'Ma consommation du' : 'Ma consommation de';
  }

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('fr_FR', null);
    return Container(
      //margin: EdgeInsets.only(left: 10, top: 30, bottom: 10),
      child: Row(
        children: <Widget>[
          Text(
            getTitleText(selectedType),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(width: 10),
          Text(
            formatDate(selectedDate, selectedType),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0XFFFF7900)
            ),
          ),
        ],
      ),
    );
  }
}
