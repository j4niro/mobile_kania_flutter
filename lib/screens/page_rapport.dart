import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/myWidgets/banniere.dart';
import 'package:mobile_kania_flutter/myWidgets/rapports.dart';

class PageRapport extends StatelessWidget {
  const PageRapport({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
        leading: 
        Image.asset('assets/logo.png',),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {
              
            },
          ),
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {},
          ),
        ],
        ),
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
                  Rapports(),
                  Rapports(),
                  Rapports(),
                  Rapports(),
                  Rapports(),
                  Rapports(),
                  Rapports(),
                ],
                     ),
            ),
          ],
        ),
      )
     )
    );
  }
}
