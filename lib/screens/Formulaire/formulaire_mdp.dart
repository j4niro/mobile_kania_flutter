import 'package:flutter/material.dart';
import 'package:mobile_kania_flutter/components/botton_navbar.dart';
import 'package:mobile_kania_flutter/components/custom_app_bar.dart';

class FormulaireModif extends StatefulWidget {
  const FormulaireModif({super.key});

  @override
  State<FormulaireModif> createState() => _FormulaireModifState();
}

class _FormulaireModifState extends State<FormulaireModif> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar : CustomAppBar(),
      body: Center(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: width*0.9,
            height: height*0.3,
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
                Text('Modifier votre mot de passe ?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 40,),
                TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      hintText: 'Email',
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
                      child: Text('Envoyer', style: TextStyle(color: Colors.white, fontSize: 20),),
                    ),
                  ),),
              ],
              ),
          ),
        ) ,
        ),
        bottomNavigationBar: BottomNavbarWidget(),
    );;
  }
}