import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/share_preferences/preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;


class AuthService extends ChangeNotifier{

  // si retornamos algo es un error

  final storage = new FlutterSecureStorage();

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



 if(decodedResp.containsKey('token') ){
   // token hay que guardarlo en un lugar seguro
final vToken = decodedResp['token'];

 
      if(vToken!=null){
        await storage.write(key: 'token', value:  decodedResp['token']);
        Preferences.token =  decodedResp['token'];
        return null;
      }else{
        return decodedResp['mensajes']['descripcion'];
      }
 }

}

Future logout() async{
  await storage.delete(key: 'token');
  return;
}

// verifica si hay token

Future<String> readToken() async{
  return await storage.read(key: 'token') ?? '';
}


}