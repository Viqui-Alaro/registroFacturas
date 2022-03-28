import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/share_preferences/preferences.dart';


class registroQR extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
      print(Preferences.token+" :::: TOKEN:::");
    return Center(
      
      child: Text('QR', style: TextStyle(fontSize: 30),),
      
    );
  }
}