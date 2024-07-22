import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_kania_flutter/services/shared_preferences.dart';


class Rapports extends StatelessWidget {
  Rapports({super.key, required this.id, this.text = "12 mars 2024 - 12 avril 2024", this.site = "KM4"  });
  final id;
  final String text;
  final String site;


   void printInfo(BuildContext context) async {
    var prefs = await loadPreferences();
    prefs.setInt("id", id);
    context.go("/rapport_comparaison"); // Navigation vers la page "/home" la page afficheComparaison doit récupérer l'id du document pour l'afficher en récupérant une nouvelle fois le document dans la base de donnée mysql
  }
  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Calculate the responsive width and height
    double containerWidth = screenWidth * 0.5; // 50% of screen width
    double containerHeight = screenHeight * 0.15; // 15% of screen height

    return Container(
      width: containerWidth,
      height: containerHeight,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            offset: Offset(0, 4.0),
            blurRadius: 4.0,
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: containerWidth * 0.14, // 12% of container width
                height: containerHeight * 0.16, // 16% of container height
                child: Image.asset("assets/icon _google docs_.png"),
              ),
              SizedBox(
                width: containerWidth * 0.11, // 11% of container width
                height: containerHeight * 0.12, // 12% of container height
                child: Image.asset("assets/Group 39656.png"),
              ),
            ],
          ),
          SizedBox(height: containerHeight * 0.2), // 20% of container height
          Container(
            width: containerWidth * 0.8, // 80% of container width
            height: containerHeight * 0.14, // 14% of container height
            child: Text(
              text,
              style: TextStyle(fontSize: 11, /*fontFamily: GoogleFonts.outfit().fontFamily*/),
            ),
          ),
          Container(
            width: containerWidth * 0.17, // 17% of container width
            height: containerHeight * 0.14, // 14% of container height
            child: Text(
              site,
              style: TextStyle(
                fontSize: 11,
                //fontFamily: GoogleFonts.outfit().fontFamily,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent,
              ),
            ),
          ),
          // SizedBox(height: containerHeight * 0.04), // 4% of container height
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Container(
                  width: containerWidth * 0.16,
                  height: containerHeight * 0.16,
                  child: IconButton(
                    style: IconButton.styleFrom(padding: EdgeInsets.all(0)),
                  onPressed: null,
                  icon: Image.asset("assets/image 13.png", fit: BoxFit.contain),
                                ),
                ),
              Container(
                width: containerWidth * 0.16,
                height: containerHeight * 0.16,
                child: IconButton(
                  style: IconButton.styleFrom(padding: EdgeInsets.all(0)),
                onPressed: null,
                icon: SizedBox(
                  width: containerWidth * 0.13, // 13% of container width
                  height: containerHeight * 0.15, // 15% of container height
                  child: Image.asset("assets/image 14.png", scale: 1,),
                ),
                            ),
              ),
              Container(
                width: containerWidth * 0.16,
                height: containerHeight * 0.16,
                child: IconButton(
                  style: IconButton.styleFrom(padding: EdgeInsets.all(0),),
                onPressed: null,
                icon: SizedBox(
                  width: containerWidth * 0.13, // 13% of container width
                  height: containerHeight * 0.15, // 15% of container height
                  child: Image.asset("assets/image 15.png"),
                ),
                            ),
              ),
              IconButton(
                onPressed: () => printInfo(context),
                icon: Container(
                  width: containerWidth * 0.22, // 22% of container width
                  height: containerHeight * 0.14, // 9% of container height
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.deepOrangeAccent,
                  ),
                  child: Image.asset("assets/image 10.png"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


