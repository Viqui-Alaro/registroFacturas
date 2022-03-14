import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/ui/input_decorations.dart';
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
              CardContainer(
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text('SIAT EN TUS MANOS', style: Theme.of(context).textTheme.headline4,),
                    SizedBox(height: 30),
                    _LoginForm()

                  ],
                ),
              ),
               SizedBox(height: 80),
            ],
          ),
        )
      )
   );
  }

}


  class _LoginForm extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
      return Container(
        child: Form(
          // TODO: mantener la referencia al KEY
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                  hintText: '9199772013',
                  labelText: 'Codigo Dependiente',
                  prefixIcon: Icons.person
                ),
               
              ),
              SizedBox(height: 30,),
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                  hintText: 'viqui.alaro',
                  labelText: 'Usuario',
                  prefixIcon: Icons.person
                ),
               
              ),
              SizedBox(height: 30,),
              TextFormField(
                autocorrect: false,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                  hintText: '********',
                  labelText: 'Contraseña',
                  prefixIcon: Icons.lock_outline
                ),
               
              ),
               SizedBox(height: 30,),
               MaterialButton(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                 disabledColor:Color.fromRGBO(38, 38, 38, 0.4),
                 elevation: 0,
                 color: Color.fromRGBO(38, 38, 38, 0.4),
                 child: Container(
                   padding: EdgeInsets.symmetric(horizontal: 80,vertical: 15),// Color.fromRGBO(38, 38, 38, 0.4)
                   child: Text('Ingresar', style: TextStyle(color: Colors.white),),
                 ),
                 onPressed: (){})
            ],
          ),
        ),
      );
    }
  }