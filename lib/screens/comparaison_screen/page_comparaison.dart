import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/screens/comparaison_screen/list_comparaison.dart';


class PageComparaison extends StatelessWidget {
  const PageComparaison({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListTabComparaison(),
      )
     )
    );
  }
}

