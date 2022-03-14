import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/widgets/widgets.dart';



class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 250),
              CardContainer(),

            ],
          ),
        )
      )
   );
  }
}