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
  String selectedType = 'Jour';
  List<Map<String, dynamic>> selectorPeriode = [
    {'text': 'Jour', 'active': true},
    {'text': 'Mois', 'active': false},
    {'text': 'Année', 'active': false},
  ];
  List<String> siteOptions = ['Tout', 'Site1', 'Site2', 'Site3'];
  String selectedSite = 'Tout';

  void handleDateChange(DateTime newDate) {
    setState(() {
      selectedDate = newDate;
    });
  }

  void handleSiteChange(String value) {
    setState(() {
      selectedSite = value;
    });
  }

  void handleItemClick(int index, String type) {
    setState(() {
      selectorPeriode.forEach((item) => item['active'] = false);
      selectorPeriode[index]['active'] = true;
      selectedType = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaConsoJour(
          selectedDate: selectedDate,
          selectedType: selectedType,
        ),
        Column(
          children: [
            SelectPeriode(
              selectorItems: selectorPeriode,
              onItemClick: handleItemClick,
            ),
            if (selectedType == 'Jour') SelectorChild(onDateChange: handleDateChange),
            if (selectedType == 'Mois') SelectorMonth(onDateChange: handleDateChange),
            if (selectedType == 'Année') SelectorYear(onDateChange: handleDateChange),
            SelectorSite(options: siteOptions, onSelectChange: handleSiteChange),
          ],
        ),
      ],
    );
  }
}
