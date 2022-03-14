import 'package:flutter/material.dart';




class LoginFormProvider extends ChangeNotifier{

  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  String codigo   = '';
  String usuario  = '';
  String password = '';

  bool isValidForm(){

    print( formKey.currentState?.validate());

    return formKey.currentState?.validate() ?? false;
  }

}