import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/components/Graphes/linechart.dart';
import 'package:mobile_kania_flutter/components/botton_navbar.dart';
import 'package:mobile_kania_flutter/components/card.dart';
import 'package:mobile_kania_flutter/components/main_selector.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  child: Column( 
                    children: [
                      SizedBox(height: 20,),
                      MainSelector(),
                      SizedBox(height: 40,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CardWidget(title: 'Total kWh',value: 36.6 , unite: ' kWh', date: '4 juillet 2024', icon: 'assets/Union.png',),
                            CardWidget(title: 'Estimation du prix',value: 2671.8 , unite: ' FCFA', date: '4 juillet 2024', icon: 'assets/poisson.png',),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color:Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 3.84,
                              offset: const Offset(0, 2), 
                            ),
                          ],
                        ),
                        child : LineChartSample2(),
                      )
                    ],
                  ),
                ),
              ),
    );
  }
}