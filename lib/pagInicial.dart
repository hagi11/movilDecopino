import 'package:flutter/material.dart';
import 'package:movil_app/widgets/widgetAppBar/appbar.dart';
import 'package:movil_app/widgets/widgetAppBar/menu_lateral.dart';
import 'package:movil_app/widgets/widgetCarts/cartaTodos.dart';
import 'package:movil_app/widgets/widgetDecoration/decoBoxShadow.dart';
import 'package:movil_app/widgets/widgetDecoration/fondoPrincipal.dart';
import 'package:movil_app/widgets/widgetTexto/cursive.dart';
import 'package:movil_app/widgets/widgetTexto/normalTexto.dart';
import 'package:movil_app/widgets/widgetTexto/titulo.dart';

Color color1 = Color.fromARGB(198, 140, 172, 184);
Color color2 = Color.fromARGB(200, 229, 222, 207);
Color color3 = Color.fromARGB(198, 220, 223, 182);

class PagInicial extends StatelessWidget {
  const PagInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: appbar(size, 'INICIO', context, false, '/pagInicial'),
        drawer: MenuLateral(),
        body: Container(
          // height: size.height,
          // width: size.width,
          decoration: fondo(),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.02),
                padding: EdgeInsets.only(top: size.height * 0.01),
                width: size.width * 0.9,
                height: size.height * 0.20,
                decoration: Decoboxsahdow(Color.fromARGB(255, 255, 255, 255)),
                child: Column(children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: size.width * 0.05),
                    child: titulo(
                      texto: 'Stock',
                      tamano: 25,
                      align: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: size.height * 0.015),
                    // color: Colors.amber.wihOpacity(0.5),
                    width: size.width * 0.9,
                    height: size.height * 0.12,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            cartaConenido(
                              size: size,
                              title: 'Articulos',
                              numero: 100,
                              color: color1,
                            ),
                            cartaConenido(
                              size: size,
                              title: 'Combos',
                              numero: 36,
                              color: color2,
                            ),
                            cartaConenido(
                              size: size,
                              title: 'Productos',
                              numero: 400,
                              color: color3,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.02),
                padding: EdgeInsets.only(top: size.height * 0.01),
                width: size.width * 0.9,
                height: size.height * 0.20,
                decoration: Decoboxsahdow(Color.fromARGB(255, 255, 255, 255)),
                child: Column(children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: size.width * 0.05),
                    child: titulo(
                      texto: 'Visitas',
                      tamano: 25,
                      align: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: size.height * 0.015),
                    // color: Colors.amber.wihOpacity(0.5),
                    width: size.width * 0.9,
                    height: size.height * 0.12,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            cartaConenido(
                              size: size,
                              title: 'Articulos',
                              numero: 1000,
                              color: color1,
                            ),
                            cartaConenido(
                              size: size,
                              title: 'Combos',
                              numero: 300,
                              color: color2,
                            ),
                            cartaConenido(
                              size: size,
                              title: 'Productos',
                              numero: 2031,
                              color: color3,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.02),
                padding: EdgeInsets.only(top: size.height * 0.01),
                width: size.width * 0.9,
                height: size.height * 0.20,
                decoration: Decoboxsahdow(Color.fromARGB(255, 255, 255, 255)),
                child: Column(children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: size.width * 0.05),
                    child: titulo(
                      texto: 'Compras',
                      tamano: 25,
                      align: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: size.height * 0.015),
                    // color: Colors.amber.wihOpacity(0.5),
                    width: size.width * 0.9,
                    height: size.height * 0.12,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            cartaConenido(
                              size: size,
                              title: 'Articulos',
                              numero: 25,
                              color: color1,
                            ),
                            cartaConenido(
                              size: size,
                              title: 'Combos',
                              numero: 35,
                              color: color2,
                            ),
                            cartaConenido(
                              size: size,
                              title: 'Productos',
                              numero: 40,
                              color: color3,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class cartaConenido extends StatelessWidget {
  const cartaConenido({
    Key? key,
    required this.size,
    required this.title,
    required this.numero,
    required this.color,
  }) : super(key: key);

  final Size size;
  final String title;
  final int numero;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: size.width * 0.03),
      width: size.width * 0.26,
      height: size.height * 0.12,
      decoration: Decoboxsahdow(Color.fromARGB(255, 255, 255, 255)),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: size.width * 0.26,
            height: size.height * 0.04,
            child: normalText(
              texto: title,
              align: TextAlign.center,
              tamano: 18,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: color,
            width: size.width * 0.26,
            height: size.height * 0.08,
            child: normalText(
              texto: numero.toString(),
              align: TextAlign.center,
              tamano: 40,
            ),
          ),
        ],
      ),
    );
  }
}
