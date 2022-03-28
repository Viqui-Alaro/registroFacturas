import 'package:flutter/material.dart';


class RegistroScreen extends StatefulWidget {
  const RegistroScreen({Key? key}) : super(key: key);

  @override
  State<RegistroScreen> createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {

  int _paginaActual = 0;
  List<Widget> _paginas= [
    paginaQR(),
    paginaList()
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


class paginaQR extends StatelessWidget {
  const paginaQR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('QR', style: TextStyle(fontSize: 30),),
    );
  }
}


class paginaList extends StatelessWidget {
  const paginaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Listado', style: TextStyle(fontSize: 30),),
    );
  }
}