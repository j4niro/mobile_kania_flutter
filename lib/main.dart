import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
    final GoRouter _router = GoRouter(
      initialLocation: '/accueil',
      routes: [
        GoRoute(
          path: '/login',
          builder: (context, state) => const Login(),
        ),
        GoRoute(
          path: '/accueil',
          builder: (context, state) => const Accueil(),
        ),
        ShellRoute(
          builder: (context, state, child) {
            return MainScreen(child: child);
          },
          routes: [
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
            // Additional routes
            GoRoute(
              path: '/info_sites',
              builder: (context, state) => const InfoSites(),
            ),
            GoRoute(path:'/formulaire_mdp',
              builder: (context, state) => const FormulaireModif(),
            ),
            GoRoute(path:'/rapport_comparaison',
              builder: (context, state) => const RapportComparaison(),
            ),
            GoRoute(path:'/rapport_consommation',
              builder: (context, state) => const Placeholder(),
            ),
          ],
        ),
      ],
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'KANIA MOBILE',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

class MainScreen extends StatefulWidget {
  final Widget child;

  const MainScreen({required this.child, super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<String> _routes = [
    '/home',
    '/rapport',
    '/parametres',
    '/comparaison',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    context.go(_routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: widget.child,
      bottomNavigationBar: BottomNavbarWidget(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}


