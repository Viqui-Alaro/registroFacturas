import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/services/user_token_services.dart';
import 'package:flutter_registro_facturas/share_preferences/preferences.dart';

import 'package:provider/provider.dart';

class registroQR extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
      print(Preferences.token+" :::: TOKEN:::");

      final tokenUsuario = Provider.of<TokenUserService>(context);


      //tokenUsuario.headLines;

 print(tokenUsuario);
                    
    return Center(
      
      child: Text('QR', style: TextStyle(fontSize: 30),),
      
    );
  }
}