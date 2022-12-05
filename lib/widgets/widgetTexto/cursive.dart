import 'package:flutter/material.dart';

class textCursive extends StatelessWidget {
  String texto;
  double tamano;
  textCursive({
    required this.texto,
    this.tamano = 40,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: TextStyle(
          fontFamily: 'MrsSaint',
          fontWeight: FontWeight.bold,
          // color: Colors.white,
          color: Color.fromARGB(100, 99, 99, 99),
          fontSize: tamano),
    );
  }
}
