import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body : SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Center(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child: Lottie.asset('assets/Animation - 1720025571978.json', width: width * 0.9, 
                      ),),
                      Text('Connectez-vous ici!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            Container(
              width: width * 0.9,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      //width : width * 0.9,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0XFFff7900)),
                      ),
                      hintText: 'Email ...',
                      //prefixIcon: Icon(Icons.email),
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: 'Mot de passe ...',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0XFFff7900)),
                      ),
                      //prefixIcon: const Icon(Icons.lock),
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextButton(onPressed:(){}, 
                  child: Container(
                    //width: width * 0.99,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0XFFff7900),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text('Se connecter', style: TextStyle(color: Colors.white, fontSize: 20),),
                    ),
                  ),),
                ],
              ),
            )
          ],),
      )
    );
  }
}