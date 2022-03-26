
import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/screens/screens.dart';
import 'package:flutter_registro_facturas/services/auth_services.dart';
import 'package:provider/provider.dart';



class CheckAuthScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final authService = Provider.of<AuthService>(context,listen: false);

    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: authService.readToken(),
          builder: (BuildContext context, AsyncSnapshot snapshot){
            if(!snapshot.hasData)
              return Text('');
            
            if(snapshot.data==''){
              Future.microtask((){

              Navigator.pushReplacement(context, PageRouteBuilder(
                pageBuilder: (_, __ , ___ ) => LoginScreen(),
                transitionDuration: Duration(seconds: 0)
                )
              );
             //Navigator.of(context).pushReplacementNamed('home');
            });
            }else{
              Future.microtask((){

              Navigator.pushReplacement(context, PageRouteBuilder(
                pageBuilder: (_, __ , ___ ) => HomeScreen(),
                transitionDuration: Duration(seconds: 0)
                )
              );
             //Navigator.of(context).pushReplacementNamed('home');
            });
            }
           
            
           
            return Container(); 
          })
     ),
   );
  }
}