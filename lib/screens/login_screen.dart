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
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                      width: 2
                    )
                  ),
                  hintText: '9199772013',
                  labelText: 'Codigo Dependiente',
                  labelStyle: TextStyle(
                    color: Colors.grey
                  ),
                  prefixIcon: Icon(Icons.person,color: Colors.lightBlueAccent)
                ),
              )
            ],
          ),
        ),
      );
    }
  }