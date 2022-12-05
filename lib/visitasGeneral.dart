import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:movil_app/widgets/widgetCarts/cartaPequena.dart';
import 'package:movil_app/widgets/widgetDecoration/decoBoxShadow.dart';
import 'package:movil_app/widgets/widgetDecoration/fondoPrincipal.dart';

import 'package:movil_app/widgets/widgetGrafico/contenedorGrafica.dart';
import 'package:movil_app/widgets/widgetTexto/normalTexto.dart';
import 'package:movil_app/widgets/widgetTexto/titulo.dart';

import '../widgets/widgetAppBar/menu_lateral.dart';
import '../widgets/widgetAppBar/appbar.dart';

Color color1 = Color.fromARGB(200, 183, 127, 81);
Color color2 = Color.fromARGB(200, 164, 164, 155);
Color color3 = Color.fromARGB(200, 229, 222, 207);
Color color4 = Color.fromARGB(199, 223, 182, 182);
Color color5 = Colors.white.withOpacity(0.8);
Color color6 = Color.fromARGB(197, 180, 190, 192);
Color colorSelec = Color.fromARGB(125, 255, 193, 7);

Color colorArt = color1;
Color colorPro = color2;
Color colorCom = color3;
Color colorGen = colorSelec;

Color colorBar = color6;
Color colorCir = color5;
Color colorLine = color5;
Color colorGraSelect = color6;

bool GrafBar = false;
bool GrafCir = false;
bool GrafLine = true;

List<double> valDato = [
  2000000,
  1100000,
  1500000,
  3000000,
  3500000,
  900000,
  1759000,
];

List<String> NomDato = [
  'Enero',
  'Febreo',
  'Marzo',
  'Abril',
  'Mayo',
  'Junio',
  'Julio',
  'Agosto'
];

List<double> valorRango = rango(valDato);

class VisitasGeneral extends StatefulWidget {
  const VisitasGeneral({Key? key}) : super(key: key);

  @override
  State<VisitasGeneral> createState() => _VisitasGeneralState();
}

class _VisitasGeneralState extends State<VisitasGeneral> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        appBar:
            appbar(size, 'VISITAS GENERALES', context, true, '/visitasGeneral'),
        drawer: MenuLateral(),
        body: Container(
          decoration: fondo(),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.09,
              ),
              ContenedorGrafica(
                size: size,
                NomDato: NomDato,
                valDato: valDato,
                mostrarGrafBar: GrafBar,
                mostrarGrafCir: GrafCir,
                mostrarGrafLine: GrafLine,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                // color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.width * 0.04),
                width: size.width * 0.96,
                height: size.height * 0.09,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          graficar(1);
                        });
                      },
                      child: Container(
                        decoration: Decoboxsahdow(colorBar),
                        width: size.width * 0.26,
                        height: size.height * 0.08,
                        child: Icon(
                          Icons.add_chart_outlined,
                          size: size.height * 0.07,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          graficar(2);
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin:
                            EdgeInsets.symmetric(horizontal: size.width * 0.05),
                        decoration: Decoboxsahdow(colorCir),
                        width: size.width * 0.26,
                        height: size.height * 0.08,
                        child: Icon(
                          Icons.pie_chart,
                          size: size.height * 0.07,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          graficar(3);
                        });
                      },
                      child: Container(
                        decoration: Decoboxsahdow(colorLine),
                        width: size.width * 0.26,
                        height: size.height * 0.08,
                        child: Icon(
                          Icons.ssid_chart_rounded,
                          size: size.height * 0.07,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.06,
                decoration: Decoboxsahdow(Colors.white),
                child: titulo(
                  texto: 'Descargar',
                  align: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void selected(tipoMercancia) {
  if (tipoMercancia == 1) {
    colorArt = colorSelec;
    colorPro = color2;
    colorCom = color3;
    colorGen = color4;

    valDato = [
      3000000,
      2100000,
      2500000,
      3000000,
      4500000,
      500000,
      3759000,
    ];
  } else {
    if (tipoMercancia == 2) {
      colorArt = color1;
      colorPro = colorSelec;
      colorCom = color3;
      colorGen = color4;

      valDato = [
        1000000,
        2100000,
        3500000,
        4000000,
        5500000,
        600000,
        7759000,
      ];
    } else {
      if (tipoMercancia == 3) {
        colorArt = color1;
        colorPro = color2;
        colorCom = colorSelec;
        colorGen = color4;
        valDato = [
          7000000,
          6100000,
          5500000,
          4000000,
          3500000,
          200000,
          1759000,
        ];
      } else {
        colorArt = color1;
        colorPro = color2;
        colorCom = color3;
        colorGen = colorSelec;
        valDato = [
          2000000,
          1100000,
          1500000,
          3000000,
          3500000,
          900000,
          1759000,
        ];
      }
    }
  }
  valorRango = rango(valDato);
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

void graficar(int one) {
  if (one == 1) {
    GrafBar = true;
    GrafCir = false;
    GrafLine = false;
    colorBar = colorGraSelect;
    colorCir = color5;
    colorLine = color5;
  } else {
    if (one == 2) {
      GrafBar = false;
      GrafCir = true;
      GrafLine = false;
      colorBar = color5;
      colorLine = color5;
      colorCir = colorGraSelect;
    } else {
      GrafBar = false;
      GrafCir = false;
      GrafLine = true;
      colorBar = color5;
      colorCir = color5;
      colorLine = colorGraSelect;
    }
  }
}
