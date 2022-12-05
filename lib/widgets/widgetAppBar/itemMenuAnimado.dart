import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:movil_app/widgets/widgetTexto/normalTexto.dart';
import 'package:movil_app/widgets/widgetTexto/titulo.dart';

class ItemMenuAnima extends StatelessWidget {
  IconData cono;
  String label;
  final Function() funcion;
  ItemMenuAnima({
    Key? key,
    required this.size,
    required this.label,
    required this.cono,
    required this.funcion,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      alignment: Alignment.center,
      child: Container(
        child: Stack(
          children: [
            Container(
                width: size.width * 0.8,
                height: size.height * 0.05,
                padding: EdgeInsets.only(
                    left: size.width * 0.05, bottom: size.height * 0.004),
                alignment: Alignment.bottomLeft,
                child: Spin(
                    delay: Duration(milliseconds: 500),
                    duration: Duration(milliseconds: 1000),
                    child: Icon(cono, size: 20))),
            Container(
              width: size.width * 0.8,
              height: size.height * 0.05,
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: size.width * 0.08),
              // margin:EdgeInsets.only(bottom: size.height * 0.01),
              child: ListTile(
                  title: normalText(
                    texto: 'PRODUCTOS',
                    tamano: 15,
                  ),
                  onTap: funcion),
            ),
          ],
        ),
      ),
    );
  }
}
