import 'package:flutter/material.dart';
import 'package:movil_app/widgets/widgetCarts/cartaClientes.dart';
import 'package:movil_app/widgets/widgetDecoration/buscador.dart';
import 'package:movil_app/widgets/widgetDecoration/fondoPrincipal.dart';
import '../widgets/widgetAppBar/menu_lateral.dart';
import '../widgets/widgetAppBar/appbar.dart';

Color color1 = Color.fromARGB(198, 140, 172, 184);
Color color2 = Color.fromARGB(200, 229, 222, 207);
Color color3 = Color.fromARGB(198, 220, 223, 182);

Color colorArt = color1;
Color colorCom = color2;
Color colorPro = color3;

class Clientes extends StatelessWidget {
  const Clientes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: appbar(size, 'CLIENTES', context, true, '/clientes'),
        drawer: MenuLateral(),
        body: Container(
          decoration: fondo(),
          child: ListView(
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Buscador(size: size),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                height: size.height * 0.82,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    CartaClientes(
                        size: size,
                        ident: 9999999999,
                        nombre: 'Juan Alberto Piedraita del monte',
                        compras: 4,
                        gasto: 2000121,
                        color: colorCom),
                    CartaClientes(
                        size: size,
                        ident: 9999999999,
                        nombre: 'Juan Alberto Piedraita del monte',
                        compras: 4,
                        gasto: 2000121,
                        color: colorCom),
                    CartaClientes(
                        size: size,
                        ident: 9999999999,
                        nombre: 'Juan Alberto Piedraita del monte',
                        compras: 4,
                        gasto: 2000121,
                        color: colorCom),
                    CartaClientes(
                        size: size,
                        ident: 9999999999,
                        nombre: 'Juan Alberto Piedraita del monte',
                        compras: 4,
                        gasto: 2000121,
                        color: colorCom),
                    CartaClientes(
                        size: size,
                        ident: 9999999999,
                        nombre: 'Juan Alberto Piedraita del monte',
                        compras: 4,
                        gasto: 2000121,
                        color: colorCom),
                    CartaClientes(
                        size: size,
                        ident: 9999999999,
                        nombre: 'Juan Alberto Piedraita del monte',
                        compras: 4,
                        gasto: 2000121,
                        color: colorCom),
                    CartaClientes(
                        size: size,
                        ident: 9999999999,
                        nombre: 'Juan Alberto Piedraita del monte',
                        compras: 4,
                        gasto: 2000121,
                        color: colorCom),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
