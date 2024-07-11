import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'http://192.168.252.133:5000/api/v1';

  Future<Map<String, dynamic>> connexion(String email, String password) async {
    final url = '$_baseUrl/user/connexion';
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to connect');
    }
  }

  // Ajoutez d'autres méthodes pour d'autres API ici.
}
