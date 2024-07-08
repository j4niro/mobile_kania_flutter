import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/components/Graphes/linechart.dart';
import 'package:mobile_kania_flutter/screens/Home_page/home.dart';
import 'package:mobile_kania_flutter/screens/Login/login.dart';
import 'package:mobile_kania_flutter/screens/accueil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KANIA MOBILE',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const Accueil(),
      routes : {
        '/login' : (context) => const Login(),
        '/home' : (context) => const Home(),
        '/accueil' : (context) => const Accueil(),
      }
    );
  }
}


