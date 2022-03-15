import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/widgets/background_home.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background()
        ],
      )
   );
  }
}