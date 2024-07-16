import 'dart:convert';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:mobile_kania_flutter/services/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/services/models/comparaison.dart';
import 'package:mobile_kania_flutter/components/rapports.dart';
import 'package:mobile_kania_flutter/services/api/Api.dart';

class ListTabComparaison extends StatefulWidget {
  const ListTabComparaison({super.key});

  @override
  createState() => _ListTabState();
}

// State de la liste. Il contient la liste des éléments et gère l'affichage
// d'un loader pendant le chargement des données.
class _ListTabState extends State<ListTabComparaison> {
  late ComparaisonData _data;
  var _rapportList;
  bool _loading = true;
  var prefs;
  var sessionManager = SessionManager();
  _getData() async {
    var response = await API.getUserComparaisonByID(await sessionManager.get("userEmail"), prefs.get("id"));
    if (response.statusCode == 200) {
      var list = json.decode(response.body);
      setState(() {
        _data = ComparaisonData.fromJson(list);
        _rapportList = Rapports(id : _data.id, text: _data.periode, site: _data.siteName);
        _loading = false;
      });
    } else {
      throw Exception('Erreur récupération des données');
    }
  }

  @override
  void initState() {
    super.initState();
    _getData();
    prefs = loadPreferences();
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
      return _rapportList;
    }
  }
}
