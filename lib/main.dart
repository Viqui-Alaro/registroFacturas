import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/screens/screens.dart';

void main() => runApp(MyApp());


class AppState extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Siat',
      initialRoute: 'login',
      routes: {
        'login':( _ )=>LoginScreen(),
        'home':( _ )=>HomeScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300]
      ),
     
    );
  }
}