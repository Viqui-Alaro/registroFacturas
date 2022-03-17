import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/widgets/background_home.dart';
import 'package:flutter_registro_facturas/widgets/card_table.dart';
import 'package:flutter_registro_facturas/widgets/page_title.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
         _HomeBody()
        ],
      )
   );
  }
}


class _HomeBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          //titulos
          PageTitle(),
          //Card table
          CardTable()
        ],
      ),
    );
  }
}