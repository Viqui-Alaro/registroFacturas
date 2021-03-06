import 'package:flutter/material.dart';
import 'package:flutter_registro_facturas/screens/screens.dart';
import 'package:flutter_registro_facturas/services/auth_services.dart';
import 'package:flutter_registro_facturas/services/user_token_services.dart';
import 'package:flutter_registro_facturas/share_preferences/preferences.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(AppState());
}


class AppState extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) =>AuthService() ),
        ChangeNotifierProvider(create: (_) =>TokenUserService() )
      ],
      child: MyApp(),
    );
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
        'checking':( _ )=>CheckAuthScreen(),
        'home':( _ )=>HomeScreen(),
        'login':( _ )=>LoginScreen(),
        'container':( _ )=>RegistroScreen(),
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300]
      ),
     
    );
  }
}