// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:movil_app/widgets/widgetGrafico/line_titles.dart';

class LineChartWidget extends StatelessWidget {
  List<double> valor;
  List<double> rango;
  List<String> axisLista;
  LineChartWidget({
    Key? key,
    required this.size,
    required this.valor,
    required this.rango,
    required this.axisLista,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) => LineChart(
        swapAnimationDuration: Duration(milliseconds: 700),
        LineChartData(
          minX: 0,
          maxX: 7,
          minY: 0,
          maxY: rango[1],
          titlesData: LineTitles.getTitleData(
            axisLista,
          ),
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Color.fromARGB(99, 0, 0, 0),
                strokeWidth: 1,
              );
            },
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: Color.fromARGB(99, 0, 0, 0),
                strokeWidth: 1,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Color.fromARGB(99, 0, 0, 0), width: 1),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 0),
                FlSpot(1, valor[0]),
                FlSpot(2, valor[1]),
                FlSpot(3, valor[2]),
                FlSpot(4, valor[3]),
                FlSpot(5, valor[4]),
                FlSpot(6, valor[5]),
                FlSpot(7, valor[6]),
              ],
              isCurved: true,
              color: Colors.amber.withOpacity(0.4),
              barWidth: 3,
              // dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                color: Color.fromARGB(255, 134, 134, 134).withOpacity(0.3),
              ),
            ),
          ],
        ),
      );
}
