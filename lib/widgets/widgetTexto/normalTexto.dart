import 'package:flutter/material.dart';

class normalText extends StatelessWidget {
  TextAlign align;
  String texto;
  double tamano;
  normalText({
    required this.texto,
    this.align = TextAlign.justify,
    this.tamano = 40,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: align,
      texto,
      style: TextStyle(
          fontFamily: 'Nixie',
          fontWeight: FontWeight.bold,
          // color: Colors.white,
          color: Color.fromARGB(99, 0, 0, 0),
          fontSize: tamano),
    );
  }
}
