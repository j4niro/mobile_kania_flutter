import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:mobile_kania_flutter/services/models/comparaison.dart';
import 'package:mobile_kania_flutter/components/rapports.dart';
import 'package:mobile_kania_flutter/services/api/Api.dart';
import 'package:mobile_kania_flutter/services/shared_preferences.dart';

class ListTabComparaison extends StatefulWidget {
  const ListTabComparaison({super.key});
  @override
  createState() => _ListTabState();
}

// State de la liste. Il contient la liste des éléments et gère l'affichage
// d'un loader pendant le chargement des données.
class _ListTabState extends State<ListTabComparaison> {
  var prefs;
  List<ComparaisonData> _data = <ComparaisonData>[];
  List<Widget> _rapportList = <Widget>[];
  bool _loading = true;
 var sessionManager = SessionManager();
  _getData() async {
    var response = await API.getUserComparaison(await sessionManager.get("userEmail"));
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      setState(() {
        _data = list.map((model) => ComparaisonData.fromJson(model)).toList();
        _rapportList = _data.map((e) => Rapports(id : e.id, text: e.periode, site: e.siteName, )).toList();
        _loading = false;
      });
    } else {
      throw Exception('Erreu récupération des données');
    }
  }

  @override
  void initState() {
    super.initState();
    prefs = loadPreferences();
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
        child: CircularProgressIndicator(
          color: Color(0XFFFF7900),
        ),
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
