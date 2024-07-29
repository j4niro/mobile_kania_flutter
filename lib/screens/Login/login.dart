import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_kania_flutter/main.dart';
import 'package:mobile_kania_flutter/screens/Home_page/home.dart';
import 'package:mobile_kania_flutter/services/api/api_services.dart'; // Assurez-vous d'importer votre service API
import 'package:go_router/go_router.dart';
import 'package:mobile_kania_flutter/services/shared_preferences.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
var prefs;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final ApiService _apiService = ApiService();
  bool _isLoading = false;
  String? _errorMessage;


  @override
  void initState() {
    super.initState();
    prefs = loadPreferences();
  }
  void _handleSubmit() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final response = await _apiService.connexion(
        _emailController.text,
        _passwordController.text,
      );

      if (response['statut'] == 'success') {

        var sessionData = response['data'];
        var sessionManager = SessionManager();

        await sessionManager.set('userToken', sessionData['userToken']);
        await sessionManager.set('userEmail', sessionData['user']);
        await sessionManager.set('userName', sessionData['name']);
        await sessionManager.set('userType', sessionData['type']);

        context.go('/home');
      } else {
        setState(() {
          _errorMessage = response['statut'];
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Erreur de connexion';
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100),
              Center(
                child: Column(
                  children: [
                    Lottie.asset(
                      'assets/Animation - 1720025571978.json',
                      width: width * 0.9,
                    ),
                    const Text(
                      'Connectez-vous ici!',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Container(
                width: width * 0.9,
                child: Column(
                  children: [
                    TextField(
                      cursorColor: const Color(0XFFff7900),
                      controller: _emailController,
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF7900), // Couleur orange
                                  width: 1.0,
                                ),
                              ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0XFFff7900)),
                        ),
                        hintText: 'Email ...',
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextField(
                      cursorColor: const Color(0XFFff7900),
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        filled: true,
                        hintText: 'Mot de passe ...',
                        focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFFF7900), // Couleur orange
                                  width: 1.0,
                                ),
                              ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0XFFff7900)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    if (_isLoading)
                      const CircularProgressIndicator(
                        color: Color(0XFFff7900),
                      )
                    else
                      TextButton(
                        onPressed: _handleSubmit,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0XFFff7900),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Center(
                            child: Text(
                              'Se connecter',
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    if (_errorMessage != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text(
                          _errorMessage!,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
