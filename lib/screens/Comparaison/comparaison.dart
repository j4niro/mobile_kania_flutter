import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/components/botton_navbar.dart';

class Comparaison extends StatefulWidget {
  const Comparaison({super.key});

  @override
  State<Comparaison> createState() => _ComparaisonState();
}

class _ComparaisonState extends State<Comparaison> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comparaison'),
      ),
      body: const Center(
        child: Text('Comparaison'),
      ),
      bottomNavigationBar: BottomNavbarWidget(),
    );
  }
}