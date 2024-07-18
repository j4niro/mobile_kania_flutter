import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/components/botton_navbar.dart';
import 'package:mobile_kania_flutter/components/custom_app_bar.dart';
import 'package:mobile_kania_flutter/screens/Formulaire/formulaire_mdp.dart';
import 'package:mobile_kania_flutter/screens/Home_page/home.dart';
import 'package:mobile_kania_flutter/screens/Login/login.dart';
import 'package:mobile_kania_flutter/screens/Param%C3%A8tres/info_sites.dart';
import 'package:mobile_kania_flutter/screens/Param%C3%A8tres/parametres.dart';
import 'package:mobile_kania_flutter/screens/rapport_screen/page_rapport.dart';
import 'package:mobile_kania_flutter/screens/RapportComp/rapport_comparaison.dart';
import 'package:mobile_kania_flutter/screens/accueil.dart';
import 'package:mobile_kania_flutter/screens/comparaison_screen/page_comparaison.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KANIA MOBILE',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    const PageRapport(),
    const Parametres(),
    const PageComparaison(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavbarWidget(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

