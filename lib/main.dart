import 'package:flutter/material.dart';
import 'package:movil_app/filtro.dart';

import 'package:movil_app/inicio.dart';
import 'package:movil_app/login.dart';
import 'package:movil_app/clientes.dart';
import 'package:movil_app/pagInicial.dart';
import 'package:movil_app/productos/menosVentas.dart';
import 'package:movil_app/productos/menosVisitas.dart';
import 'package:movil_app/ventaGeneral.dart';
import 'package:movil_app/visitasGeneral.dart';
import 'package:movil_app/productos/todos.dart';
import 'package:movil_app/productos/masVentas.dart';
import 'package:movil_app/productos/masVisitas.dart';

import 'package:provider/provider.dart';
import 'package:movil_app/api/AllApi.dart';
import 'package:movil_app/providers/mercancias_provider.dart';

void main() {
  Api.configuteDio();
  runApp(AppState());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(lazy: false, create: (_) => MercanciasProvider()),
    ], child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        '/inicio': (context) => Inicio(),
        '/pagInicial': (context) => PagInicial(),
        '/clientes': (context) => Clientes(),
        '/ventaGeneral': (context) => VentaGeneral(),
        '/visitasGeneral': (context) => VisitasGeneral(),
        '/login': (context) => Login(),
        '/productosMasVentas': (context) => MasVentasItems(),
        '/productosMenosVentas': (context) => MenosVentasItems(),
        '/productosTodos': (context) => TodosItems(),
        '/productosMasVisitas': (context) => MasVisitasItems(),
        '/productosMenosVisitas': (context) => MenosVisitasItems(),
        '/filtro': (context) => Filtro(),
      },
      initialRoute: '/inicio',
    );
  }
}
