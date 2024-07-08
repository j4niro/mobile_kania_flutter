import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_kania_flutter/screens/Home_page/home.dart';
import 'package:mobile_kania_flutter/screens/Login/login.dart';
import 'package:mobile_kania_flutter/screens/accueil.dart';
import 'package:mobile_kania_flutter/screens/mesRapports.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

class Banniere extends StatelessWidget {
  const Banniere({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 126,
          width: double.infinity,
          padding: EdgeInsets.all(8.0),
          color: Color.fromARGB(255, 244, 244, 244),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Mes Rapports", 
            style: TextStyle(
              fontFamily: GoogleFonts.outfit().fontFamily,
              fontSize: 20, 
              fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 262.79,
                height: 27,
                child: Text("Visualisez et téléchargez votre rapport de consommation électrique au format PDF,Excel ou CSV.",
                style: TextStyle(
                  fontSize: 10
                ),))
          ],
          ),
        ),
      ],
    );
  }
}


