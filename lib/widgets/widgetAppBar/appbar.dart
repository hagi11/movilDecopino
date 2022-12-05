import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:movil_app/filtro.dart';

import 'package:movil_app/widgets/widgetTexto/titulo.dart';

AppBar appbar(Size size, String barTitulo, BuildContext context,
    bool showFiltro, String nomPagina) {
  return AppBar(
    iconTheme: IconThemeData(
      color: Color.fromARGB(255, 212, 194, 164),
      size: size.width * 0.08,
    ),
    title: Container(
      // width: size.width * 0.92,
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            width: size.width * 0.70,
            padding: EdgeInsets.only(right: size.width * 0.07),
            alignment: Alignment.center,
            child: titulo(
              // color: Color.fromARGB(255, 189, 19, 19),
              texto: barTitulo,
              tamano: 27,
              align: TextAlign.end,
            ),
          ),
          Visibility(
            visible: showFiltro,
            child: InkWell(
              onTap: () {
                //   Navigator.of(context)
                //       .pushNamed('/filtro', arguments: nomPagina);

                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Filtro(pagAnterior: nomPagina)));
              },
              child: Container(
                width: size.width * 0.05,
                child: Icon(
                  Icons.filter_list_rounded,
                  size: size.width * 0.08,
                  color: Color.fromARGB(255, 212, 194, 164),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
