import 'package:flutter/material.dart';

class titulo extends StatelessWidget {
  TextAlign align;
  Color color;
  String texto;
  double tamano;
  titulo({
    required this.texto,
    this.color = Colors.brown,
    this.align = TextAlign.justify,
    this.tamano = 40,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      textAlign: align,
      style: TextStyle(
          fontFamily: 'Slabo',
          fontWeight: FontWeight.bold,
          color: color,
          fontSize: tamano),
    );
  }
}
