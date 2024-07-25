import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:mobile_kania_flutter/components/botton_navbar.dart';
import 'package:mobile_kania_flutter/components/custom_app_bar.dart';
import 'package:mobile_kania_flutter/services/models/comparaison.dart';
import 'package:mobile_kania_flutter/services/api/Api.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:mobile_kania_flutter/services/shared_preferences.dart';

class RapportComparaison extends StatefulWidget {
  const RapportComparaison({super.key});

  @override
  State<RapportComparaison> createState() => _RapportComparaisonState();
}

class _RapportComparaisonState extends State<RapportComparaison> {
  bool _loading = true;
  late ComparaisonData _data;
  late String id;
  //var prefs;
  var sessionManager = SessionManager();
  _getData() async {
    try {
      final prefs = await loadPreferences();
      id = prefs.get("id")?.toString() ?? "";
    } catch (e) {
      print(e);
      _loading = false;
    }
    var response = await API.getUserComparaisonByID(id);
    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      print(responseBody);  
      setState(() {
        _data = ComparaisonData.fromJson(responseBody['data']);
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
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    if (_loading) {
      // Loader
      return const Center(
        child: CircularProgressIndicator(color: Color(0Xffff7900),),
      );
    } else { return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            //width: width*0.8,
            height: height*0.9,
            decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
            ),
            child: Column(
              children: [
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/logo.png', width: 120,),
                    Container(
                    width: width*0.35,
                    height: height*0.060,
                    
                    decoration: const BoxDecoration(
                      color: Color(0xffff7900),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)
                      )
                    ),
                    child: Center(child: Text(_data.siteName, style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),)),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Date d'émission : ${_data.emissionDate}")],),
                SizedBox(height: 30,),
                Column(
                  children: [
                    Center(child: Text('Comparaison de consommation du', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),)),
                    Center(child: Text(_data.periode,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xffff7900)),)),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Facture fourni par ${_data.prestataire}'),
                  ],
                ),
                Container(
                  //width: width*0.95,
                  //height: height*0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 3.84,
                        offset: const Offset(0, 2), 
                      ),
                    ],
                  ),
                  child: Table(
                    //width : width*0.8,
                    border: TableBorder(
                      top: BorderSide.none,
                      bottom: BorderSide.none,
                      ),
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                          color: Colors.black
                          ),
                        
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(children:[Text('TITRE', style: TextStyle(color: Colors.white),)]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(children:[Text('VALEURS',style: TextStyle(color: Colors.white)), ]),
                          ),
                        ]
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(children:[Text('Consommation en kWh')]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(children:[Text(_data.consommation)]),
                          ),
                        ]
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(children:[Text('Facture en FCFA')]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(children:[Text(_data.montant)]),
                          ),
                        ]
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Rapport de KANIA'),
                  ],
                ),
                Container(
                  //width: width*0.95,
                  //height: height*0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 3.84,
                        offset: const Offset(0, 2), 
                      ),
                    ],
                  ),
                  child: Table(
                    //width : width*0.8,
                    border: TableBorder(
                      top: BorderSide.none,
                      bottom: BorderSide.none,
                      ),
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                          color: Colors.black
                          ),
                        
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(children:[Text('TITRE', style: TextStyle(color: Colors.white),)]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(children:[Text('VALEURS',style: TextStyle(color: Colors.white)), ]),
                          ),
                        ]
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(children:[Text('Consommation en kWh')]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(children:[Text(_data.powerCollected)]),
                          ),
                        ]
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(children:[Text('Facture en FCFA')]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(children:[Text(_data.prixCollected)]),
                          ),
                        ]
                      ),
                    ],
                  ),
                ),
      
                SizedBox(height: 30,),
                Container(
                  //width: width*0.95,
                  //height: height*0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color:Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 3.84,
                        offset: const Offset(0, 2), 
                      ),
                    ],
                  ),
                  child: Table(
                    columnWidths: const {
                      0: FlexColumnWidth(3),
                      1: FlexColumnWidth(1),
                      2: FlexColumnWidth(1),
                      3: FlexColumnWidth(2),
                    },
                    //width : width*0.8,
                    border: TableBorder(
                      top: BorderSide.none,
                      bottom: BorderSide.none,
                      ),
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                          color: Colors.black
                          ),
                        
                        children: [
                          Column(children:[Text('TITRE', style: TextStyle(color: Colors.white),)]),
                          Column(children:[Text('IHS',style: TextStyle(color: Colors.white)), ]),
                          Column(children:[Text('KANIA',style: TextStyle(color: Colors.white)), ]),
                          Column(children:[Text('DIFFERENCE',style: TextStyle(color: Colors.white)), ]),
                        ]
                      ),
                      TableRow(
                        children: [
                          Column(children:[Text('Consommation en kWh')]),
                          Column(children:[Text(_data.consommation)]),
                          Column(children:[Text(_data.powerCollected)]),
                          Column(children:[Text(_data.diffPower, style: TextStyle(backgroundColor: Colors.red, color: Colors.white))]),
                        ]
                      ),
                      TableRow(
                        children: [
                          Column(children:[Text('Facture en FCFA')]),
                          Column(children:[Text(_data.montant)]),
                          Column(children:[Text(_data.prixCollected)]),
                          Column(children:[Text(_data.diffPrix, style: TextStyle(backgroundColor: Colors.red, color: Colors.white) ,)]),
                        ]
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Conclusion', style: TextStyle(fontSize: 17, color: Color(0Xffff7900)),),
                    SizedBox(height: 10,),
                    Text("La facture fournie par ${_data.prestataire} est ${_data.infSup} de ${_data.percent} par rapport à la consommation mésurée par KANIA.", style: TextStyle(fontSize: 15),),
                  ],
                )
              ],
          ),
        )),
    );
}
}}