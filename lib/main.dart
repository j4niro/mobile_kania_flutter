import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/screens/comparaison_screen/page_comparaison.dart';
import 'package:mobile_kania_flutter/screens/rapport_screen/page_rapport.dart';
import 'package:mobile_kania_flutter/components/Graphes/linechart.dart';
import 'package:mobile_kania_flutter/screens/Formulaire/formulaire_mdp.dart';
import 'package:mobile_kania_flutter/screens/Home_page/home.dart';
import 'package:mobile_kania_flutter/screens/Login/login.dart';
import 'package:mobile_kania_flutter/screens/Param%C3%A8tres/parametres.dart';
import 'package:mobile_kania_flutter/screens/accueil.dart';
import 'package:go_router/go_router.dart';


void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter _router = GoRouter(
      initialLocation: '/login',
      routes: [
        GoRoute(
          path: '/accueil',
          builder: (context, state) => const Accueil(),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => const Login(),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => const Home(),
        ),
        GoRoute(
          path: '/rapport',
          builder: (context, state) => const PageRapport(),
        ),
        GoRoute(
          path: '/parametres',
          builder: (context, state) => const Parametres(),
        ),
        GoRoute(
          path: '/comparaison',
          builder: (context, state) => const PageComparaison(),
        ),
        GoRoute(
          path: '/formulairemodif',
          builder: (context, state) => const FormulaireModif(),
        )
      ],
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'KANIA MOBILE',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:  Colors.white),
        useMaterial3: true,
      ),
      routerConfig: _router,
      //home:const Accueil(),
      
    );
  }

}