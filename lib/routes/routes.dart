import 'package:flutter/material.dart';

import 'package:movil_app/inicio.dart';
import 'package:movil_app/login.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        '/inicio': (context) => Inicio(),
        '/login': (context) => Login(),
        // '/menu': (context) => Menu(),
        // '/barra': (context) => Barra(),
      },
      initialRoute: '/inicio',
    );
  }
}