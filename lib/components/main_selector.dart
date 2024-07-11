import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_kania_flutter/components/ma_conso_du_jour.dart';
import 'package:mobile_kania_flutter/components/selector/select_periode.dart';
import 'package:mobile_kania_flutter/components/selector/selector_child.dart';
import 'package:mobile_kania_flutter/components/selector/selector_month.dart';
import 'package:mobile_kania_flutter/components/selector/selector_site.dart';
import 'package:mobile_kania_flutter/components/selector/selector_year.dart';



class MainSelector extends StatefulWidget {
  @override
  _MainSelectorState createState() => _MainSelectorState();
}

class _MainSelectorState extends State<MainSelector> {
  DateTime selectedDate = DateTime.now();
  String selectedType = 'Jour'; // Par défaut
  List<Map<String, dynamic>> selectorPeriode = [
    {'text': 'Jour', 'active': true},
    {'text': 'Mois', 'active': false},
    {'text': 'Année', 'active': false},
  ];
  List<String> siteOptions = ['VITIB', 'KM4', 'ODC']; // Exemple de données pour les sites

  void handleDateChange(DateTime newDate) {
    setState(() {
      selectedDate = newDate;
    });
  }

  void handleSiteChange(int selectedIndex) {
    // Implémentation pour changer de site
    print('Site sélectionné: $selectedIndex');
  }

  void handleItemClick(int index, String type) {
    setState(() {
      selectorPeriode.forEach((item) {
        item['active'] = item['text'] == type;
      });
      selectedType = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return  Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MaConsoJour(selectedDate: selectedDate, selectedType: selectedType),
            const SizedBox(height: 15.0),
            Center(
              child: SelectPeriode(
                selectorItems: selectorPeriode,
                onItemClick: handleItemClick,
                width: width*0.95,
              ),
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (selectedType == 'Jour') SelectorChild(onDateChange: handleDateChange),
                    if (selectedType == 'Mois') SelectorMonth(onDateChange: handleDateChange),
                    if (selectedType == 'Année') SelectorYear(onDateChange: handleDateChange),
                  ],
                ),
                SelectorSite(options: siteOptions, onSelectChange: handleSiteChange),
              ],
            ),
           
          ],
        ),
      );
  }
}
