import 'package:flutter/material.dart';
import 'package:movil_app/productos/masVentas.dart';
import 'package:movil_app/widgets/widgetAppBar/menu_lateral.dart';
import 'package:movil_app/widgets/widgetDecoration/decoBoxShadow.dart';
import 'package:movil_app/widgets/widgetGrafico/graficaLineal.dart';
import 'package:movil_app/widgets/widgetGrafico/graficacircular.dart';
import 'graficaBarras.dart';

class ContenedorGrafica extends StatefulWidget {
  // List<double> valorRango;
  List<String> NomDato;
  List<double> valDato;
  bool mostrarGrafLine;
  bool mostrarGrafBar;
  bool mostrarGrafCir;

  final Size size;
  ContenedorGrafica({
    Key? key,
    required this.size,
    // required this.valorRango,
    required this.valDato,
    required this.NomDato,
    this.mostrarGrafBar = false,
    this.mostrarGrafLine = false,
    this.mostrarGrafCir = false,
  }) : super(key: key);

  @override
  State<ContenedorGrafica> createState() => _ContenedorGrafica();
}

class _ContenedorGrafica extends State<ContenedorGrafica> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Visibility(
          visible: widget.mostrarGrafLine,
          child: Container(
            decoration: Decoboxsahdow(Color.fromARGB(197, 255, 255, 255)),
            margin: EdgeInsets.symmetric(horizontal: widget.size.width * 0.020),
            padding: EdgeInsets.only(
                top: widget.size.width * 0.05,
                right: widget.size.width * 0.05,
                bottom: widget.size.width * 0.05),
            height: widget.size.height * 0.5,
            width: widget.size.width,
            child: LineChartWidget(
              rango: rango(widget.valDato),
              axisLista: widget.NomDato,
              valor: widget.valDato,
              size: widget.size,
            ),
          ),
        ),
        Visibility(
          visible: widget.mostrarGrafBar,
          child: Container(
            decoration: Decoboxsahdow(Color.fromARGB(197, 255, 255, 255)),
            margin: EdgeInsets.symmetric(horizontal: widget.size.width * 0.020),
            padding: EdgeInsets.only(
                top: widget.size.width * 0.05,
                right: widget.size.width * 0.05,
                bottom: widget.size.width * 0.05),
            height: widget.size.height * 0.5,
            width: widget.size.width,
            child: BarChartSample3(
                rango: rango(widget.valDato),
                axisLista: widget.NomDato,
                valor: widget.valDato),
          ),
        ),
        Visibility(
          visible: widget.mostrarGrafCir,
          child: Container(
              decoration: Decoboxsahdow(Color.fromARGB(197, 255, 255, 255)),
              margin:
                  EdgeInsets.symmetric(horizontal: widget.size.width * 0.020),
              padding: EdgeInsets.only(
                  top: widget.size.width * 0.05,
                  right: widget.size.width * 0.05,
                  bottom: widget.size.width * 0.05),
              height: widget.size.height * 0.5,
              width: widget.size.width,
              child: GraficaCircular(
                  valores: widget.valDato, nombres:widget.NomDato),)
        )
      ],
    );
  }
}

List<double> rango(valDato) {
  var maximo = valDato[0];
  var minimo = valDato[0];

  for (var i = 0; i < valDato.length; i++) {
    // Checking for largest value in the list
    if (valDato[i] > maximo) {
      maximo = valDato[i];
    }

    // Checking for smallest value in the list
    if (valDato[i] < minimo) {
      minimo = valDato[i];
    }
  }
  List<double> valorRango = [minimo, maximo];

  return valorRango;
}

