import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ConfigBarChart extends StatelessWidget {
  List<double> valor = [];
  List<double> rango = [];
  List<String> axisLista = [];
  ConfigBarChart(
      {required this.valor,
      required this.rango,
      required this.axisLista,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      swapAnimationDuration: const Duration(milliseconds: 700),
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        gridData: FlGridData(show: true, drawVerticalLine: false),
        alignment: BarChartAlignment.spaceAround,
        maxY: rango[1],
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.transparent,
          tooltipPadding: const EdgeInsets.all(0),
          tooltipMargin: 7,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(
                color: Color.fromARGB(255, 85, 85, 85),
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xff7589a2),
      fontWeight: FontWeight.bold,
      fontSize: 10,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = axisLista[0];
        break;
      case 1:
        text = axisLista[1];
        break;
      case 2:
        text = axisLista[2];
        break;
      case 3:
        text = axisLista[3];
        break;
      case 4:
        text = axisLista[4];
        break;
      case 5:
        text = axisLista[5];
        break;
      case 6:
        text = axisLista[6];
        break;
      case 7:
        text = axisLista[7];

        break;

      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4.0,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 50,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  final _barsGradient = const LinearGradient(
    colors: [
      Color.fromARGB(193, 179, 178, 178),
      Color.fromARGB(218, 0, 217, 255),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  List<BarChartGroupData> get barGroups => [
        // BarGrupPlot(0),
        // BarGrupPlot(1),
        // BarGrupPlot(2),
        // BarGrupPlot(3),
        // BarGrupPlot(4),
        // BarGrupPlot(5),
        // BarGrupPlot(6),
      ];

  data() {
    for (int i = 0; i < valor.length; i++) {
      barGroups.add(BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: valor[i], // valor de y
            gradient: _barsGradient,
            width: 10,
          ),
        ],
      )
          // showingTooltipIndicators: [0],
          );
    }
    return barGroups;
  }
}

class BarChartSample3 extends StatefulWidget {
  List<double> valor;
  List<double> rango;
  List<String> axisLista;

  BarChartSample3(
      {required this.valor,
      required this.rango,
      required this.axisLista,
      Key? key})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => BarChartSample3State();
}

class BarChartSample3State extends State<BarChartSample3> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return AspectRatio(
      aspectRatio: 1.7,
      child: Container(
        // margin: EdgeInsets.only(left: size.width * 0.030),
        child: ConfigBarChart(
          valor: widget.valor,
          rango: widget.rango,
          axisLista: widget.axisLista,
        ),
      ),
    );
  }
}
