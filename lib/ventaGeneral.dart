import 'package:flutter/material.dart';
import 'package:movil_app/widgets/widgetDecoration/fondoPrincipal.dart';
import 'widgets/widgetAppBar/menu_lateral.dart';
import 'widgets/widgetAppBar/appbar.dart';

class VentaGeneral extends StatelessWidget {
  const VentaGeneral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: appbar(size, 'VENTAS GENERALES',context,true,'/ventaGeneral'),
        drawer: MenuLateral(),
        body: Container(
          decoration: fondo(),
          child: Center(
            child: Text('VentasItems'),
          ),
        ),
      ),
    );
  }
}
