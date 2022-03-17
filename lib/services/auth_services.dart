import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class AuthService extends ChangeNotifier{


  Future<String?> autentificacion(String tipoUsuarioId,String nit, String login, String password) async {
  final response = await http.post(
    Uri.parse('https://siatrest.impuestos.gob.bo:39102/token/get'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'tipoUsuarioId':tipoUsuarioId,
      'nit':nit,
      'login':login,
      'password':password
    }),
  );
 final Map<String,dynamic>decodedResp = json.decode(response.body);
 print(decodedResp);

}


}