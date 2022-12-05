import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:movil_app/widgets/widgetDecoration/decoBoxShadow.dart';
import 'package:movil_app/widgets/widgetTexto/normalTexto.dart';
import 'package:movil_app/widgets/widgetTexto/titulo.dart';

class CartaPequena extends StatelessWidget {
  String textoCarta;
  String numero;
  IconData cono;
  Color color;
  CartaPequena({
    Key? key,
    required this.size,
    required this.numero,
    required this.textoCarta,
    required this.cono,
    required this.color,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: size.height * 0.01),
      width: size.width * 0.225,
      height: size.width * 0.225,
      decoration: Decoboxsahdow(color),
      child: Column(
        children: [
          titulo(
            texto: textoCarta,
            tamano: 18,
            align: TextAlign.center,
          ),
          Stack(
            children: [
              Container(
                  padding: EdgeInsets.only(bottom: size.height * 0.015),
                  alignment: Alignment.center,
                  width: size.width * 0.225,
                  height: size.width * 0.10,
                  child: normalText(
                    align: TextAlign.center,
                    texto: numero,
                    tamano: 18,
                  )),
              FadeIn(
                duration: Duration(milliseconds: 1000),
                child: Container(
                  padding: EdgeInsets.only(right: size.width * 0.01),
                  alignment: Alignment.bottomRight,
                  width: size.width * 0.22,
                  height: size.height * 0.065,
                  child: Icon(
                    cono,
                    size: 35,
                    color: Color.fromARGB(255, 70, 70, 70),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
