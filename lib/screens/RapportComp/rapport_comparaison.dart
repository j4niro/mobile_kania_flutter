import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
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
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          //width: width*0.8,
          height: height*0.8,
          color: Colors.yellow,
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
                children: [Text("Date d'émission :" + DateFormat.DAY)],)
            ],
        ),
      )));
  }
}