import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/components/botton_navbar.dart';
import 'package:mobile_kania_flutter/components/custom_app_bar.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_kania_flutter/main.dart';
import 'package:mobile_kania_flutter/screens/Formulaire/formulaire_mdp.dart';
import 'package:mobile_kania_flutter/screens/Param%C3%A8tres/info_sites.dart';

class Parametres extends StatefulWidget {
  const Parametres({super.key});

  @override
  State<Parametres> createState() => _ParametresState();
}

class _ParametresState extends State<Parametres> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        child: Column(
          children: [
            Container(
              //height: containerHeight,
              width: double.infinity,
              padding: EdgeInsets.all(15.0),
              //color: Color.fromARGB(255, 244, 244, 244),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Paramètres",
                    style: TextStyle(
                        //fontFamily: GoogleFonts.outfit().fontFamily,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      width: 262.79,
                      height: 50,
                      child: Text(
                        "Accédez aux paramètres de votre application pour voir et mettre à jour vos informations personnelles et ceux de vos sites.",
                        style: TextStyle(fontSize: 10),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  
                  border: const Border(
                    left: BorderSide(
                      color: Color(0XFFFF7900),
                      width: 25,
                    ),
                    right: BorderSide(
                      color: Color(0XFFFF7900),
                      width: 25,
                    ),
                    top: BorderSide(
                      color: Color(0XFFFF7900),
                      width: 40,
                    ),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(height: 30,),
                    TextButton(
                      onPressed: () {
                        context.go('/info_sites');
                      },
                      child: Container(
                        width: width * 0.7,
                        height: 50,
                        
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFFFF7900)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.info_outline, color: Color(0XFFFF7900),),
                              SizedBox(width: 10,),
                              Text(
                                'Infomations sites',
                                style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ),
                      TextButton(
                      onPressed: () {
                        context.go('/formulaire_mdp');
                      },
                      child: Container(
                        width: width * 0.7,
                        height: 50,
                        
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFFFF7900)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                               SizedBox(width: 10,),
                              Icon(Icons.lock_outline_rounded, color: Color(0XFFFF7900),),
                               SizedBox(width: 10,),
                              Text(
                                'Modifier le mot de passe',
                                style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ),
                      TextButton(
                      onPressed: () {
                        
                      },
                      child: Container(
                        width: width * 0.7,
                        height: 50,
                        
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFFFF7900)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                               SizedBox(width: 10,),
                              Icon(Icons.favorite_border, color: Color(0XFFFF7900),),
                               SizedBox(width: 10,),
                              Text(
                                "Préférences d'affichage",
                                style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ),
                      TextButton(
                      onPressed: () {
                        
                      },
                      child: Container(
                        width: width * 0.7,
                        height: 50,
                        
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFFFF7900)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                               SizedBox(width: 10,),
                              Icon(Icons.notification_important_outlined, color: Color(0XFFFF7900),),
                               SizedBox(width: 10,),
                              Text(
                                'Gestion de notification',
                                style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ),
                      TextButton(
                      onPressed: () {
                        
                      },
                      child: Container(
                        width: width * 0.7,
                        height: 50,
                        
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0XFFFF7900)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Center(
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                               SizedBox(width: 10,),
                              Icon(Icons.logout_outlined, color: Color(0XFFFF7900),),
                               SizedBox(width: 10,),
                              Text(
                                'Déconnexion',
                                style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ),
                      SizedBox(height: 30,),
                  ],
                )
              ),
            ),
          ],
        ),
      );
  }
}
