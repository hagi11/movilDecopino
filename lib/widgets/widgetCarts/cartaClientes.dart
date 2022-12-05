import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:movil_app/widgets/widgetDecoration/decoBoxShadow.dart';
import 'package:movil_app/widgets/widgetTexto/normalTexto.dart';
import 'package:movil_app/widgets/widgetTexto/titulo.dart';

final Color colorText = Color.fromARGB(255, 117, 115, 114);

class CartaClientes extends StatelessWidget {
  String nombre;
  int ident;
  int compras;
  int gasto;

  Color color;
  CartaClientes({
    Key? key,
    required this.size,
    required this.ident,
    required this.compras,
    required this.gasto,
    required this.nombre,
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
      height: size.height * 0.15,
      decoration: Decoboxsahdow(color),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: size.height * 0.01),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: size.width * 0.04),
            child: titulo(
              texto: nombre,
              tamano: 22,
              align: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: size.height * 0.007),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: size.width * 0.04),
            child: normalText(
              texto: "ID " + ident.toString(),
              tamano: 18,
              align: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: size.height * 0.007),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: size.width * 0.04),
            child: normalText(
              texto: "Compras relizadas: " + compras.toString(),
              tamano: 18,
              align: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: size.height * 0.007),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: size.width * 0.04),
            child: normalText(
              texto: "Gasto Total: " + gasto.toString() + "\$ ",
              tamano: 18,
              align: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
