import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/providers/login_form_provider.dart';
import 'package:flutter_registro_facturas/services/services.dart';
import 'package:provider/provider.dart';

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
                  ChangeNotifierProvider(
                    create: ( _ )=>LoginFormProvider(),
                    child: _LoginForm(),
                    ),
                   

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

      final loginForm = Provider.of<LoginFormProvider>(context);
      return Container(
        child: Form(
          // TODO: mantener la referencia al KEY
          key: loginForm.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                
                autocorrect: false,
                keyboardType: TextInputType.number,
                decoration: InputDecorations.authInputDecoration(
                  hintText: '9199772013',
                  labelText: 'Codigo Dependiente',
                  prefixIcon: Icons.person
                ),
                onChanged:(value) => loginForm.codigo = value ,
               validator: (value) {
                final intNumber = int.tryParse(value.toString());
                if (intNumber != null && intNumber.bitLength >= 10){
                return null;
                }
                return 'Ingrese el numero';
              },    
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
                 onChanged: (value) => loginForm.usuario = value,
               
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
                onChanged: (value) => loginForm.password = value,
                validator: (value) {
                  return (value !=null && value.length >=6)
                    ? null
                    : 'La Contraseña debe ser de 6 caracteres';
                },
               
              ),
               SizedBox(height: 30,),
               MaterialButton(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                 disabledColor:Color.fromRGBO(38, 38, 38, 0.4),
                 elevation: 0,
                 color: Color.fromRGBO(38, 38, 38, 0.4),
                 child: Container(
                   padding: EdgeInsets.symmetric(horizontal: 80,vertical: 15),// Color.fromRGBO(38, 38, 38, 0.4)
                   child: Text(
                     loginForm.isLoading
                      ? 'Espere'
                      : 'Ingresar',
           
                     style: TextStyle(color: Colors.white),),
                 ),
                 onPressed: loginForm.isLoading ? null:() async{
                   FocusScope.of(context).unfocus();
                   final authService = Provider.of<AuthService>(context,listen: false);
                   if(!loginForm.isValidForm()) return;

                   loginForm.isLoading=true;
                  // await Future.delayed(Duration(seconds: 2));
                   //validar si el login es correcto

                  final String? token = await authService.autentificacion('4689', loginForm.codigo, loginForm.usuario, loginForm.password);


                   loginForm.isLoading=false;
                   Navigator.pushReplacementNamed(context, 'home');
                 })
            ],
          ),
        ),
      );
    }
  }