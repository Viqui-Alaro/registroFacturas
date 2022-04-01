import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/share_preferences/preferences.dart';

import '../models/usuarioToken.dart';
import 'package:http/http.dart' as http;


final _URL_USER = '';
final _URL_TOKEN = Preferences.token;

class TokenUserService with ChangeNotifier {

  List<UsuasioToken> headLines =[];


  TokenUserService(){
    this.getTopHeadLines();
  }

//Preferences.token
  getTopHeadLines() async{
    final url ='https://siatrest.impuestos.gob.bo/str-cau-caut-rest/rest/identidad/usuarioPorToken?Authorization=$_URL_TOKEN';

    final resp = await http.get(Uri.parse(url));

    //final tokenUserService = newsR
  }


}