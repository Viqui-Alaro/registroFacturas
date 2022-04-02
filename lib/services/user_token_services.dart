import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/share_preferences/preferences.dart';

import '../models/usuarioToken.dart';
import 'package:http/http.dart' as http;



final urls = 'Token '+Preferences.token;

class TokenUserService with ChangeNotifier {

  List<UsuasioToken> headLines =[];



  TokenUserService(){
    this.getTopHeadLines();
  }


  getTopHeadLines() async{

      print(urls+" :::: QRRRRRRRRRRRR :::");
    final url ='https://siatrest.impuestos.gob.bo/str-cau-caut-rest/rest/identidad/usuarioPorToken?Authorization=$urls';

    final resp = await http.get(Uri.parse(url));

    final tokenUserService = usuasioTokenFromJson(resp.body);

    this.headLines.add(tokenUserService);
     print(tokenUserService);
    notifyListeners();
  }


}