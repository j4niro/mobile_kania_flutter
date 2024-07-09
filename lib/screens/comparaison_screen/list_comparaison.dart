import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/data/models/comparaison.dart';
import 'package:mobile_kania_flutter/myWidgets/rapports.dart';
import 'package:mobile_kania_flutter/services/Api.dart';

class ListTabComparaison extends StatefulWidget {
  const ListTabComparaison({super.key});

  @override
  createState() => _ListTabState();
}

// State de la liste. Il contient la liste des éléments et gère l'affichage
// d'un loader pendant le chargement des données.
class _ListTabState extends State<ListTabComparaison> {
  List<ComparaisonData> _data = <ComparaisonData>[];
  List<Widget> _rapportList = <Widget>[];
  bool _loading = true;

  _getData() async {
    var response = await API.getUserComparaison();
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      setState(() {
        _data = list.map((model) => ComparaisonData.fromJson(model)).toList();
        _rapportList = _data.map((e) => Rapports(text: e.periode, site: e.siteName)).toList();
        _loading = false;
      });
    } else {
      throw Exception('Erreu récupération des données');
    }
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      // Loader
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(8.0),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: _rapportList,
            ),
          ),
        ],
      );
    }
  }
}
