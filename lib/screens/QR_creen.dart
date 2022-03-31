import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/share_preferences/preferences.dart';
import 'package:flutter_registro_facturas/services/services.dart';

class registroQR extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
      print(Preferences.token+" :::: TOKEN:::");

      final String? errorMessage =  fetchAlbum.toString();
  print(fetchAlbum.toString()+" :::: Album:::");
                    if(errorMessage == null){
                       Navigator.pushReplacementNamed(context, 'container');
                    }else{
                      // TODO: Mostrar error en la pantalla
                      print(errorMessage);
                    }

                    
    return Center(
      
      child: Text('QR', style: TextStyle(fontSize: 30),),
      
    );
  }
}