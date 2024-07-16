import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/screens/rapport_screen/list_rapport.dart';

class PageRapport extends StatelessWidget {
  const PageRapport({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListTabRapport(),
      )
     )
    );
  }
}

