import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/components/banniere.dart';
import 'package:mobile_kania_flutter/components/botton_navbar.dart';
import 'package:mobile_kania_flutter/components/custom_app_bar.dart';
import 'package:mobile_kania_flutter/components/rapports.dart';

class PageRapport extends StatelessWidget {
  const PageRapport({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: SafeArea(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Banniere(),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(8.0),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: const <Widget>[
           
                ],
                     ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbarWidget(),
     );
  }
}