import 'package:flutter/material.dart';
import 'package:movil_app/widgets/widgetCarts/cartaTodos.dart';
import 'package:movil_app/widgets/widgetDecoration/buscador.dart';
import 'package:movil_app/widgets/widgetDecoration/fondoPrincipal.dart';
import '../widgets/widgetAppBar/menu_lateral.dart';
import '../widgets/widgetAppBar/appbar.dart';

import 'package:movil_app/providers/mercancias_provider.dart';
import 'package:provider/provider.dart';

Color color1 = Color.fromARGB(198, 140, 172, 184);
Color color2 = Color.fromARGB(200, 229, 222, 207);
Color color3 = Color.fromARGB(198, 220, 223, 182);

Color colorArt = color1;
Color colorCom = color2;
Color colorPro = color3;

class TodosItems extends StatefulWidget {
  TodosItems({Key? key}) : super(key: key);

  @override
  State<TodosItems> createState() => _TodosItemsState();
}

class _TodosItemsState extends State<TodosItems> {
  @override
  void initState() {
    print("data");
    Provider.of<MercanciasProvider>(listen: false, context).getMercancias();
    super.initState();
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final mercancias = Provider.of<MercanciasProvider>(context).mercancias;
    List<Widget> itemMap = mercancias
        .map(
          (e) => CartaLarga(
              size: size,
              vistas:  int.parse(e.vistas!),
              compras: int.parse(e.compras!),
              stock: int.parse(e.id!),
              valor: int.parse(e.precio!),
              textoCarta: e.nombre!,
              cono: Icons.chair_rounded,
              color: colorPro),
        )
        .toList();

    return SafeArea(
      child: Scaffold(
        // extendBodyBehindAppBar: true,
        appBar: appbar(size, 'TODOS', context, true, '/productosTodos'),
        drawer: MenuLateral(),
        body: Container(
          decoration: fondo(),
          child: ListView(
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Buscador(size: size),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                height: size.height * 0.82,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [...itemMap],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
