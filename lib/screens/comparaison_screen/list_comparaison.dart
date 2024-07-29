import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:go_router/go_router.dart';
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
        _rapportList = _data.map((e) => Rapports(id : e.id, text: e.periode, site: e.siteName, reportType: 'comparaison', )).toList();
        _loading = false;
      });
    } else {
      throw Exception('Erreur récupération des données');
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
    double width = MediaQuery.of(context).size.width;
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
              'Comparaison',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Text('Ajoutez une facture fournie par les prestataires et obtenez un', style: TextStyle(fontSize: 10),),
            Text('rapport de comparaison avec nos données prélevées.', style: TextStyle(fontSize: 10)),
                ],
              )
            ),
          ),
          SizedBox(height: 10,),
          TextButton(
                        onPressed: (){
                          context.go('/formcomp');},
                        child: Container(
                          height: 36,
                          width: width * 0.35,
                          decoration: BoxDecoration(
                            color: const Color(0XFFff7900),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Center(
                            child: Text(
                              'Comparer',
                              style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
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
