import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Banniere extends StatelessWidget {
  const Banniere({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;

    // Calculate the responsive width and height

    double containerHeight = screenHeight * 0.15; // 15% of screen height

    return Column(
      children: [
        Container(
          height: containerHeight,
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
