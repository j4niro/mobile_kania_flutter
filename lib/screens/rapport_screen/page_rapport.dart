import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/components/botton_navbar.dart';
import 'package:mobile_kania_flutter/screens/rapport_screen/list_rapport.dart';

class PageRapport extends StatelessWidget {
  const PageRapport({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: ListTabRapport(),
      );
  }
}

