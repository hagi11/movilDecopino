import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:movil_app/widgets/widgetDecoration/buscador.dart';
import 'package:movil_app/widgets/widgetCarts/cartaPequena.dart';
import 'package:movil_app/widgets/widgetDecoration/decoBoxShadow.dart';
import 'package:movil_app/widgets/widgetDecoration/fondoPrincipal.dart';
import 'package:movil_app/widgets/widgetGrafico/graficaBarras.dart';
import 'package:movil_app/widgets/widgetGrafico/contenedorGrafica.dart';
import 'package:movil_app/widgets/widgetGrafico/graficaLineal.dart';
import 'package:movil_app/widgets/widgetTexto/normalTexto.dart';
import '../widgets/widgetAppBar/menu_lateral.dart';
import '../widgets/widgetAppBar/appbar.dart';

Color color1 = Color.fromARGB(200, 183, 127, 81);
Color color2 = Color.fromARGB(200, 164, 164, 155);
Color color3 = Color.fromARGB(200, 229, 222, 207);
Color color4 = Color.fromARGB(199, 223, 182, 182);
Color color5 = Colors.white.withOpacity(0.8);
Color color6 = Color.fromARGB(198, 60, 208, 253);
Color colorSelec = Color.fromARGB(125, 255, 193, 7);

Color colorArt = color1;
Color colorPro = color2;
Color colorCom = color3;
Color colorGen = colorSelec;

Color colorBar = color6;
Color colorCir = color5;
Color colorGraSelect = color6;

bool GrafBar = true;
bool GrafCir = false;

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
  'Armario',
  'carral',
  'repisa',
  'colchon',
  'tablas',
  'sillon',
  'tela',
  'telo'
];

List<double> valorRango = rango(valDato);
class MenosVentasItems extends StatefulWidget {
  const MenosVentasItems({Key? key}) : super(key: key);

  @override
  State<MenosVentasItems> createState() => _MenosVentasItemsState();
}

class _MenosVentasItemsState extends State<MenosVentasItems> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: appbar(size, 'MENOS VENDIDOS',context,true,'/productosMenosVentas'),
        drawer: MenuLateral(),
         body: Container(
          decoration: fondo(),
          child: Column(
            children: [
              Container(
                // color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
                padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.01,
                    horizontal: size.width * 0.03),
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
                        width: size.width * 0.40,
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
                        margin: EdgeInsets.only(left: size.width * 0.10),
                        decoration: Decoboxsahdow(colorCir),

                        // padding: EdgeInsets.symmetric(vertical: 2),
                        // color: Color.fromARGB(255, 7, 94, 255).withOpacity(0.4),
                        width: size.width * 0.40,
                        height: size.height * 0.08,
                        child: Icon(
                          Icons.pie_chart,
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
              ContenedorGrafica(
                size: size,
                NomDato: NomDato,
                valDato: valDato,
                mostrarGrafBar: GrafBar,
                mostrarGrafCir: GrafCir,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                // color: Colors.amber.withOpacity(0.4),
                // margin: EdgeInsets.only(top: size.height * 0.02),
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.020),
                width: size.width,
                height: size.height * 0.15,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected(1);
                        });
                      },
                      child: CartaPequena(
                        size: size,
                        color: colorArt,
                        textoCarta: 'Articulo',
                        numero: '9898',
                        cono: Icons.table_restaurant_outlined,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.020,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected(2);
                        });
                      },
                      child: CartaPequena(
                        size: size,
                        color: colorPro,
                        textoCarta: 'Productos',
                        numero: '110',
                        cono: Icons.chair_outlined,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.020,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected(3);
                        });
                      },
                      child: CartaPequena(
                        size: size,
                        color: colorCom,
                        textoCarta: 'Combos',
                        numero: '2',
                        cono: Icons.bed_rounded,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.020,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selected(4);
                        });
                      },
                      child: CartaPequena(
                        size: size,
                        color: colorGen,
                        textoCarta: 'General',
                        numero: '23',
                        cono: Icons.movie_outlined,
                      ),
                    ),
                  ],
                ),
              ),
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
    NomDato = [
      'toldillo',
      'cuadro',
      'decoracion',
      'cosa',
      'tablas',
      'sillon',
      'tela',
      'telo'
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
      NomDato = [
        'Armario',
        'carral',
        'repisa',
        'colchon',
        'tablas',
        'sillon',
        'tela',
        'telo'
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
        NomDato = [
          'Armario',
          'carral',
          'repisa',
          'colchon',
          'tablas',
          'sillon',
          'tela',
          'telo'
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
        NomDato = [
          'Armario',
          'carral',
          'repisa',
          'colchon',
          'tablas',
          'sillon',
          'tela',
          'telo'
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
  if (one == 2) {
    GrafBar = false;
    GrafCir = true;
    colorBar = color5;
    colorCir = colorGraSelect;
  } else {
    GrafBar = true;
    GrafCir = false;
    colorBar = colorGraSelect;
    colorCir = color5;
  }
}
