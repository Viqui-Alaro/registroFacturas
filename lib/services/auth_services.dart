import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class AuthService extends ChangeNotifier{

  // si retornamos algo es un error
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


 if(decodedResp.containsKey('token') ){
   // token hay que guardarlo en un lugar seguro
   // decodedResp['token']
  // return decodedResp['token'];

final vToken = decodedResp['token'];
 print(vToken);
 
      if(vToken!=null){
        return null;
      }else{
        return decodedResp['mensajes']['descripcion'];
      }
 }

}


}