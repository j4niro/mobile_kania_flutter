import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:mobile_kania_flutter/components/botton_navbar.dart';
import 'package:mobile_kania_flutter/components/custom_app_bar.dart';

class RapportComparaison extends StatefulWidget {
  const RapportComparaison({super.key});

  @override
  State<RapportComparaison> createState() => _RapportComparaisonState();
}

class _RapportComparaisonState extends State<RapportComparaison> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          //width: width*0.8,
          height: height*0.8,
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
                  child: Center(child: Text('Vitib', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),)),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text("Date d'émission :" + '16/07/2024')],),
              SizedBox(height: 30,),
              Column(
                children: [
                  Center(child: Text('Comparaison de consommation du', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                  Center(child: Text('17/07/2023-18/07/2024',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xffff7900)),)),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Facture fourni par IHS'),
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
                          padding: const EdgeInsets.all(7.0),
                          child: Column(children:[Text('TITRE', style: TextStyle(color: Colors.white),)]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(children:[Text('VALEURS',style: TextStyle(color: Colors.white)), ]),
                        ),
                      ]
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(children:[Text('Consommation en kWh')]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(children:[Text('5000')]),
                        ),
                      ]
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(children:[Text('Facture en FCFA')]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(children:[Text('350000')]),
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
                          padding: const EdgeInsets.all(7.0),
                          child: Column(children:[Text('TITRE', style: TextStyle(color: Colors.white),)]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(children:[Text('VALEURS',style: TextStyle(color: Colors.white)), ]),
                        ),
                      ]
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(children:[Text('Consommation en kWh')]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(children:[Text('4300')]),
                        ),
                      ]
                    ),
                    TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(children:[Text('Facture en FCFA')]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Column(children:[Text('310000')]),
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
                        Column(children:[Text('4300')]),
                        Column(children:[Text('5000')]),
                        Column(children:[Text('+700', style: TextStyle(backgroundColor: Colors.red, color: Colors.white))]),
                      ]
                    ),
                    TableRow(
                      children: [
                        Column(children:[Text('Facture en FCFA')]),
                        Column(children:[Text('310000')]),
                        Column(children:[Text('350000')]),
                        Column(children:[Text('+40000', style: TextStyle(backgroundColor: Colors.red, color: Colors.white) ,)]),
                      ]
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Conclusion'),
                ],
              )
            ],
        ),
      ));
}
}