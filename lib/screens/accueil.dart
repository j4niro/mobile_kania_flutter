import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.topRight,
              child: Image.asset('assets/Ellipse_top.png'),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Image.asset('assets/logo.png'),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Image.asset('assets/Ellipse_bottom.png'),
            ),
          ),
        ],
      ),
    );
  }
}
