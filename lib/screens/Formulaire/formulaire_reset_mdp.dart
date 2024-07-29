import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_kania_flutter/components/custom_app_bar.dart';

class FormulaireReset extends StatefulWidget {
  const FormulaireReset({super.key});

  @override
  State<FormulaireReset> createState() => _FormulaireResetState();
}

class _FormulaireResetState extends State<FormulaireReset> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Center(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: width*0.9,
            height: height*0.45,
            decoration: BoxDecoration(
              boxShadow:[
                BoxShadow(
                color:Colors.black.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 3.84,
                offset: const Offset(0, 2), 
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text('Reinitialiser le mot de passe ?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 40,),
                TextField(
                  cursorColor: Color(0XFFff7900),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF7900), // Couleur orange
                                      width: 1.0,
                                    ),
                                  ),
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      hintText: 'Code de verification',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0XFFff7900)),
                      ),
                      //prefixIcon: const Icon(Icons.lock),
                    ),
                  ),
                SizedBox(height: 20,),
                TextField(
                  cursorColor: Color(0XFFff7900),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF7900), // Couleur orange
                                      width: 1.0,
                                    ),
                                  ),
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      hintText: 'Mot de passe',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0XFFff7900)),
                      ),
                      //prefixIcon: const Icon(Icons.lock),
                    ),
                  ),
                SizedBox(height: 20,),
                TextField(
                  cursorColor: Color(0XFFff7900),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFFF7900), // Couleur orange
                                      width: 1.0,
                                    ),
                                  ),
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      hintText: 'Confirmer le mot de passe',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0XFFff7900)),
                      ),
                      //prefixIcon: const Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextButton(onPressed:(){
                    //context.go('/home');
                  }, 
                  child: Container(
                    //width: width * 0.99,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0XFFff7900),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text('Soumettre', style: TextStyle(color: Colors.white, fontSize: 20),),
                    ),
                  ),),
              ],
              ),
          ),
        ) ,
        );
  }
}