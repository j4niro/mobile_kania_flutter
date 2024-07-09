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

  void _showUserModal(BuildContext context) {
    showDialog(
      //barrierColor: Colors.white.withOpacity(0.5),
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('Informations', textAlign: TextAlign.center, style: TextStyle(fontSize: 19),),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('Kania'),
                subtitle: Text('kania@gmail.com'),
              ),
              const SizedBox(height: 10),
              TextButton(onPressed: () {
                  // Handle logout action
                  Navigator.of(context).pop(); // Close the dialog
                }, child: Container (
                  height : 40,
                  width : 120,
                  decoration: BoxDecoration(
                    color: const Color(0XFFFF7900),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child : const Center(child: Text('Déconnexion', style: TextStyle(color: Colors.white),)),
                )),
            ],
          ),
          actions: <Widget>[
            IconButton(onPressed:() {
                Navigator.of(context).pop(); // Close the dialog
              }, icon: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                
                child : Icon(Icons.close, color: Color(0XFFFF7900),)),)
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: 
        Image.asset('assets/header.png',),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {

            },
          ),
          IconButton(
            icon: Container (
              decoration: const BoxDecoration( 
                shape: BoxShape.circle,
                color: Color(0XFFFF7900),
              ),
              child : Icon(Icons.person, color: Colors.white,)),
            onPressed: () {
              _showUserModal(context);
            },
          ),
        ],
        ),
        body: Padding(
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
        bottomNavigationBar: BottomNavbarWidget(),
      );
  }
}