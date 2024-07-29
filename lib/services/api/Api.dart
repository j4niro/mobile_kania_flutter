import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

const String baseUrl = "http://192.168.252.133:5000/api/v1";
class API {
  static Future<http.Response> getUserRapports(String email) {
    return http.post(
      Uri.parse("$baseUrl/data/getUserRapports"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "user": email,
        
      }),
    );
  }


  static Future<http.Response> dashboard(String user, String filtre, String date, String site) {
    return http.post(
      Uri.parse("$baseUrl/data/dashboard"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "user": user,
        "filtre": filtre,
        "date": date,
        "site": site
      }),
    );
  }
  
  static Future<http.Response> getUserComparaison(String email) {
    return http.post(
      Uri.parse("$baseUrl/data/getUserComparaisons"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "user": email,
        
      }),
    );
  }

  static Future<http.Response> getUserComparaisonByID(String id) {
    return http.get(
      Uri.parse("$baseUrl/data/comparaison/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
  }  

}

