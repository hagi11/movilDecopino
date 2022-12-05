import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:movil_app/widgets/widgetTexto/normalTexto.dart';

Color color0 = Color.fromARGB(255, 216, 163, 163);
Color color1 = Color.fromARGB(200, 183, 127, 81);
Color color2 = Color.fromARGB(200, 164, 164, 155);
Color color3 = Color.fromARGB(200, 229, 222, 207);
Color color4 = Color.fromARGB(199, 223, 182, 182);
Color color5 = Colors.white.withOpacity(0.8);
Color color6 = Color.fromARGB(198, 60, 208, 253);
Color colorOtros = Color.fromARGB(197, 241, 220, 123);

class GraficaCircular extends StatelessWidget {
  List<double> valores;
  List<String> nombres;
  double radio;
  List<PieChartSectionData> sectionsChart = [];
  GraficaCircular(
      {required this.valores,
      this.radio = 160,
      required this.nombres,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: size.width * 0.05),
          width: size.width * 0.9,
          height: size.height * 0.4,
          child: PieChart(
            swapAnimationDuration: Duration(milliseconds: 700),
            PieChartData(
              borderData: FlBorderData(
                show: false,
              ),
              sectionsSpace: 0,
              centerSpaceRadius: 0,
              sections: getSections(),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: size.width * 0.05),
          height: size.height * 0.05,
          width: size.width * 0.9,
          child: Column(
            children: [
              Row(
                children: [
                  CajaName(
                    size: size,
                    nombre: nombres[0],
                    color: color0,
                  ),
                  CajaName(
                    size: size,
                    nombre: nombres[1],
                    color: color1,
                  ),
                  CajaName(
                    size: size,
                    nombre: nombres[2],
                    color: color2,
                  ),
                  CajaName(
                    size: size,
                    nombre: nombres[3],
                    color: color3,
                  ),
                ],
              ),
              Row(
                children: [
                  CajaName(
                    size: size,
                    nombre: nombres[4],
                    color: color4,
                  ),
                  CajaName(
                    size: size,
                    nombre: nombres[5],
                    color: color5,
                  ),
                  CajaName(
                    size: size,
                    nombre: nombres[6],
                    color: color6,
                  ),
                  CajaName(
                    size: size,
                    nombre: "Otros",
                    color: colorOtros,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  List<PieChartSectionData> getSections() {
    List<double> value = porcentaje(valores, 160);
    List<double> title = porcentaje(valores, 100);
    return sectionsChart = [
      PieChartSectionData(
        value: value[0],
        title: title[0].toStringAsPrecision(3) + " %",
        showTitle: true,
        color: color0,
        radius: radio,
      ),
      PieChartSectionData(
        value: value[1],
        title: title[1].toStringAsPrecision(3) + " %",
        showTitle: true,
        color: color1,
        radius: radio,
      ),
      PieChartSectionData(
        value: value[2],
        title: title[2].toStringAsPrecision(3) + " %",
        showTitle: true,
        color: color2,
        radius: radio,
      ),
      PieChartSectionData(
        value: value[3],
        title: title[3].toStringAsPrecision(3) + " %",
        showTitle: true,
        color: color3,
        radius: radio,
      ),
      PieChartSectionData(
        value: value[4],
        title: title[4].toStringAsPrecision(3) + " %",
        showTitle: true,
        color: color4,
        radius: radio,
      ),
      PieChartSectionData(
        value: value[5],
        title: title[5].toStringAsPrecision(3) + " %",
        showTitle: true,
        color: color5,
        radius: radio,
      ),
      PieChartSectionData(
        value: value[6],
        title: title[6].toStringAsPrecision(3) + " %",
        showTitle: true,
        color: color6,
        radius: radio,
      ),
      PieChartSectionData(
        value: value[7],
        title: value[7].toStringAsPrecision(3) + " %",
        showTitle: true,
        color: colorOtros,
        radius: radio,
      ),
    ];
  }
}

class CajaName extends StatelessWidget {
  const CajaName({
    Key? key,
    required this.color,
    required this.size,
    required this.nombre,
  }) : super(key: key);

  final Size size;
  final Color color;
  final String nombre;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: size.width * 0.013),
      width: size.width * 0.2,
      height: size.height * 0.025,
      child: Row(
        children: [
          Container(
            width: size.width * 0.05,
            height: size.height * 0.02,
            child: Icon(
              Icons.square_sharp,
              size: 15,
              color: color,
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: size.height * 0.001),
            alignment: Alignment.centerLeft,
            width: size.width * 0.15,
            height: size.height * 0.025,
            child: normalText(
              texto: nombre,
              tamano: 10,
            ),
          )
        ],
      ),
    );
  }
}

List<double> porcentaje(List<double> valor, int num) {
  List<double> porcent = [];

  double total = 30000000;
  double otros = total;
  for (int i = 0; i < valor.length; i++) {
    otros = otros - valor[i];
  }

  for (int i = 0; i < valor.length; i++) {
    porcent.add((valor[i] * num) / total);
  }
  porcent.add((otros * num) / total);
  return porcent;
}
