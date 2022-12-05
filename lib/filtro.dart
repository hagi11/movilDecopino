import 'package:flutter/material.dart';
import 'package:movil_app/widgets/widgetDecoration/decoBoxShadow.dart';
import 'package:movil_app/widgets/widgetDecoration/fondoPrincipal.dart';
import 'package:movil_app/widgets/widgetTexto/normalTexto.dart';
import 'package:movil_app/widgets/widgetTexto/titulo.dart';
import 'widgets/widgetAppBar/appbar.dart';

List<String> anio = [
  'primer Semestre',
  'segundo Semestre',
  'Mes Especifico',
];

String? valAnio;

List<String> mes = [
  'Enero',
  'Febreo',
  'Marzo',
  'Abril',
  'Mayo',
  'Junio',
  'Julio',
  'Agosto',
  'Septiembre',
  'Octubre',
  'Noviembre',
  'Diciembre',
];

String? valMes;
bool verMeses = false;

List<String> semana = [
  '1 semana',
  '2 semana',
  '3 semana',
  '4 semana',
  'todo',
];

String? valSemana;
bool verSemana = false;

class Filtro extends StatefulWidget {
  String pagAnterior;
  Filtro({Key? key, this.pagAnterior = 'null'}) : super(key: key);

  @override
  State<Filtro> createState() => _FiltroState();
}

class _FiltroState extends State<Filtro> {
  @override
  Widget build(BuildContext context) {
// var arguments = ModalRoute.of(context).settings.arguments;
    final size = MediaQuery.of(context).size;
    String? _chosenValue;

    return SafeArea(
        child: Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: appbar(size, 'FILTRO', context, false, 'null'),
      // drawer: MenuLateral(),
      body: Column(
        children: [
          Container(
            height: size.height * 0.7,
            width: size.width,
            color: Colors.green.withOpacity(0.2),
            child: ListView(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.2),
                  padding: EdgeInsets.only(left: size.width * 0.03),
                  decoration: Decoboxsahdow(Color.fromARGB(197, 255, 255, 255)),
                  child: DropdownButton<String>(
                    focusColor: Colors.white,
                    value: valAnio,
                    style: TextStyle(color: Colors.white),
                    iconEnabledColor: Colors.black,
                    icon: Icon(Icons.calendar_month),
                    items: anio.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    }).toList(),
                    hint: Text(
                      "Sesion de tiempo                 ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    onChanged: (value) {
                      setState(() {
                        valAnio = value;
                        if (valAnio == 'Mes Especifico') {
                          verMeses = true;
                          verSemana = true;
                        } else {
                          verMeses = false;
                          verSemana = false;
                        }
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Visibility(
                  visible: verMeses,
                  child: Container(
                    width: size.width * 0.6,
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.2),
                    padding: EdgeInsets.only(left: size.width * 0.03),
                    decoration:
                        Decoboxsahdow(Color.fromARGB(197, 255, 255, 255)),
                    child: DropdownButton<String>(
                      focusColor: Colors.white,
                      value: valMes,
                      style: TextStyle(color: Colors.white),
                      iconEnabledColor: Colors.black,
                      icon: Icon(Icons.calendar_month),
                      items: mes.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      hint: Text(
                        "Seleccione Mes                    ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      onChanged: (value) {
                        setState(() {
                          valMes = value;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Visibility(
                  visible: verSemana,
                  child: Container(
                    width: size.width * 0.6,
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.2),
                    padding: EdgeInsets.only(left: size.width * 0.03),
                    decoration:
                        Decoboxsahdow(Color.fromARGB(197, 255, 255, 255)),
                    child: DropdownButton<String>(
                      focusColor: Colors.white,
                      value: valSemana,
                      style: TextStyle(color: Colors.white),
                      iconEnabledColor: Colors.black,
                      icon: Icon(Icons.calendar_month),
                      items:
                          semana.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      hint: Text(
                        "Seleccione Semana             ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                      onChanged: (value) {
                        setState(() {
                          valSemana = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Center(
            child: InkWell(
              onTap: () {
                if (widget.pagAnterior == 'null') {
                  Navigator.pop(context);
                } else {
                  Navigator.popAndPushNamed(context, widget.pagAnterior);
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: size.height * 0.04,
                width: size.width * 0.4,
                decoration: Decoboxsahdow(Color.fromARGB(115, 163, 156, 156)),
                child: normalText(
                  texto: 'Filtar',
                  tamano: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
