import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  const Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Column(
          children: [
            Expanded(child: Container(
              alignment: Alignment.topRight,
              child: Image.asset('assets/Ellipse_top.png',))),
            Expanded(child: Container(
              alignment: Alignment.center,
              child: Image.asset('assets/logo.png',))),
            Expanded(child: Container(
              alignment: Alignment.bottomLeft,
              child: Image.asset('assets/Ellipse_bottom.png',))),
          ],
        )
    );
  }
}