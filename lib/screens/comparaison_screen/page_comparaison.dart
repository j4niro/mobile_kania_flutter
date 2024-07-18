import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/components/botton_navbar.dart';
import 'package:mobile_kania_flutter/components/custom_app_bar.dart';
import 'package:mobile_kania_flutter/screens/comparaison_screen/list_comparaison.dart';


class PageComparaison extends StatelessWidget {
  const PageComparaison({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: ListTabComparaison(),
      );


  }
}

