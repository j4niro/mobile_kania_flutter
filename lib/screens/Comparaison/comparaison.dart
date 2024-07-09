import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/components/botton_navbar.dart';
import 'package:mobile_kania_flutter/components/custom_app_bar.dart';

class Comparaison extends StatefulWidget {
  const Comparaison({super.key});

  @override
  State<Comparaison> createState() => _ComparaisonState();
}

class _ComparaisonState extends State<Comparaison> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const Center(
        child: Text('Comparaison'),
      ),
      bottomNavigationBar: BottomNavbarWidget(),
    );
  }
}