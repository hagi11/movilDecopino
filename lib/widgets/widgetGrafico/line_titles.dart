import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData(List<String> axisName) => FlTitlesData(
        show: true,
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        bottomTitles: AxisTitles(
          // axisNameWidget: const Text(
          //   'Articulos',
          //   style: _dateTextStyle,
          // ),
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 18,
            interval: 1,
            getTitlesWidget: LineaTitulo(ltitulo: axisName).bottomTitleWidgets,
          ),
        ),
        // leftTitles: AxisTitles(
        // axisNameSize: 20,
        // axisNameWidget: const Padding(
        //   padding: EdgeInsets.only(bottom: 8.0),
        //   child: Text('Value'),
        // ),
        // sideTitles: SideTitles(
        //   showTitles: true,
        //   interval: 1,
        //   reservedSize: 40,
        //   getTitlesWidget: leftTitleWidgets,
        // ),
        // ),
      );
}

class LineaTitulo {
  List<String> ltitulo;
  LineaTitulo({
    required this.ltitulo,
  });

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 0:
        text = '';
        break;
      case 1:
        text = '${ltitulo[0]}';
        break;

      case 2:
        text = '${ltitulo[1]}';

        break;
      case 3:
        text = '${ltitulo[2]}';

        break;
      case 4:
        text = '${ltitulo[3]}';

        break;
      case 5:
        text = '${ltitulo[4]}';

        break;
      case 6:
        text = '${ltitulo[5]}';

        break;
      case 7:
        text = '${ltitulo[6]}';

        break;
      case 8:
        text = '${ltitulo[7]}';

        break;

      default:
        return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 4,
      child: Text(text, style: _dateTextStyle),
    );
  }
}

// Widget leftTitleWidgets(double value, TitleMeta meta) {
//   const style = TextStyle(color: Colors.black, fontSize: 12.0);
//   return SideTitleWidget(
//     axisSide: meta.axisSide,
//     // child: Text('\$ ${value + 0.5}', style: style),
//     child: Text('${value}', style: style),
//   );
// }

const _dateTextStyle = TextStyle(
  fontFamily: 'Nixie',
  fontSize: 10,
  color: Colors.purple,
  fontWeight: FontWeight.bold,
);
