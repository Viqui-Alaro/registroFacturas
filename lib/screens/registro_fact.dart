import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/screens/screens.dart';
import 'package:provider/provider.dart';

class RegistroScreen extends StatefulWidget {
  const RegistroScreen({Key? key}) : super(key: key);

  @override
  State<RegistroScreen> createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {

  int _paginaActual = 0;
  List<Widget> _paginas= [
    registroQR(),
    registroList()
    ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
        appBar: AppBar(
         title: Text('Registro Facturas')
         ),
         body: _paginas[_paginaActual],
         bottomNavigationBar: BottomNavigationBar(
           onTap: (index){
             setState(() {
               _paginaActual = index;
             });

           },
           currentIndex: _paginaActual,
           items: [
             BottomNavigationBarItem(icon: Icon(Icons.qr_code),label: "QR"),
             BottomNavigationBarItem(icon: Icon(Icons.list),label: "Listado"),
           ],
         ),
       ),

    );
  }
}
