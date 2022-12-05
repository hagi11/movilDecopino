import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:movil_app/widgets/widgetDecoration/decoBoxShadow.dart';
import 'package:movil_app/widgets/widgetTexto/normalTexto.dart';
import 'package:movil_app/widgets/widgetTexto/titulo.dart';

final Color colorText = Color.fromARGB(255, 117, 115, 114);

class CartaLarga extends StatelessWidget {
  String textoCarta;
  int vistas;
  int compras;
  int valor;
  int stock;
  IconData cono;
  Color color;
  CartaLarga({
    Key? key,
    required this.size,
    required this.vistas,
    required this.compras,
    required this.valor,
    required this.stock,
    required this.textoCarta,
    required this.cono,
    required this.color,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.01),
      padding: EdgeInsets.only(top: size.height * 0.01),
      width: size.width * 0.9,
      height: size.height * 0.12,
      decoration: Decoboxsahdow(color),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: size.height * 0.01),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: size.width * 0.02),
            child: Row(
              children: [
                Icon(
                  cono,
                  color: Color.fromARGB(146, 0, 0, 0),
                  size: 20,
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
                titulo(
                  texto: textoCarta,
                  tamano: 20,
                  align: TextAlign.left,
                ),
              ],
            ),
          ),
          Container(
            width: size.width * 0.78,
            height: size.height * 0.07,
            child: Row(
              children: [
                caja(
                  size: size,
                  variable: vistas,
                  texto: 'Vista',
                ),
                caja(
                  size: size,
                  variable: compras,
                  texto: 'Compra',
                ),
                caja(
                  size: size,
                  variable: stock,
                  texto: 'Stock',
                ),
                Container(
                    alignment: Alignment.center,
                    width: size.width * 0.36,
                    height: size.height * 0.7,
                    child: Column(
                      children: [
                        titulo(
                          align: TextAlign.center,
                          texto: 'valor',
                          color: colorText,
                          tamano: 16,
                        ),
                        normalText(
                          align: TextAlign.center,
                          texto: valor.toString() + '\$',
                          tamano: 25,
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class caja extends StatelessWidget {
  const caja({
    Key? key,
    required this.texto,
    required this.size,
    required this.variable,
  }) : super(key: key);

  final Size size;
  final String texto;
  final int variable;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: size.width * 0.14,
        height: size.height * 0.7,
        child: Column(
          children: [
            titulo(
              align: TextAlign.center,
              texto: texto,
              color: colorText,
              tamano: 16,
            ),
            normalText(
              align: TextAlign.center,
              texto: variable.toString(),
              tamano: 25,
            ),
          ],
        ));
  }
}
