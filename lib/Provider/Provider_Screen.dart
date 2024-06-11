import 'dart:collection';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart'as http;

import '../modelClass/productModelClass.dart';

class MainProvider  extends ChangeNotifier{
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  void loginUser() async {
    final String apiUrl = "https://mobiz-api.yes45.in/api/login";

    final Map<String, String> credentials = {
      "Username": usernameController.text,
      "Password": passwordController.text,
    };

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(credentials),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseBody = jsonDecode(response.body);
        if (responseBody['status'] == 'success') {
          print('Login successful');
          print('User ID: ${responseBody['user']['id']}');
          print('Token: ${responseBody['authorisation']['token']}');
        } else {
          print('Login failed: ${responseBody['message']}');
        }
      } else {
        print('Server error: ${response.statusCode}');
      }
    } catch (e) {
      print('Request error: $e');
    }
  }


  List<Datum> data=[];

  Future<void> getproductdetails() async {


    http.Response response;

    response=  await http.get(Uri.parse('https://mobiz-api.yes45.in/api/get_product?store_id={{logged user store id}} '));
    if(response.statusCode==200){

      log("fetched"+response.body);
      final Map<String ,dynamic> jsondata=jsonDecode(response.body);
      Datum data= Datum.fromJson(jsondata);
      data=Datum as Datum;

    }
    notifyListeners();
  }

}


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}
Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
}