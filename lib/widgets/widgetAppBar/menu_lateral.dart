import 'package:flutter/material.dart';
import 'package:movil_app/inicio.dart';
import 'package:animate_do/animate_do.dart';
import 'itemMenu.dart';
import 'itemMenuAnimado.dart';
import 'package:movil_app/widgets/widgetTexto/normalTexto.dart';
import 'package:movil_app/widgets/widgetTexto/titulo.dart';

bool visible = false;
bool giro = false;
bool nogiro = true;

class MenuLateral extends StatefulWidget {
  const MenuLateral({Key? key}) : super(key: key);

  @override
  State<MenuLateral> createState() => _MenuLateral();
}

class _MenuLateral extends State<MenuLateral> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: SlideInLeft(
        from: size.width * 0.5,
        duration: Duration(milliseconds: 700),
        child: Drawer(
          backgroundColor: Color.fromARGB(255, 255, 255, 255).withOpacity(0.99),
          child: Column(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text("USERNAME"),
                accountEmail: Text("username@gmail.com"),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/MenuItemFondo.jpg'),
                        fit: BoxFit.cover)),
              ),
              Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                height: size.height * 0.707,
                child: Column(
                  children: [
                    ItemMenu(
                      size: size,
                      label: 'INICIO',
                      cono: Icons.home,
                      funcion: () {
                        setState(() {
                          varibles(2);
                        });

                        Navigator.of(context).popAndPushNamed('/pagInicial');
                      },
                    ),
                    Visibility(
                      visible: giro,
                      child: ItemMenuAnima(
                        size: size,
                        label: 'PRODUCTOS',
                        cono: Icons.double_arrow_rounded,
                        funcion: () {
                          setState(() {
                            varibles(2);
                          });
                        },
                      ),
                    ),
                    Visibility(
                      visible: nogiro,
                      child: ItemMenu(
                        size: size,
                        label: 'PRODUCTOS',
                        cono: Icons.double_arrow_rounded,
                        funcion: () {
                          setState(() {
                            varibles(1);
                          });
                        },
                      ),
                    ),
                    Visibility(
                      visible: visible,
                      child: SlideInLeft(
                        duration: Duration(milliseconds: 700),
                        child: Container(
                          padding: EdgeInsets.only(left: size.width * 0.07),
                          height: size.height * 0.25,
                          child: Column(
                            children: [
                              ItemMenu(
                                size: size,
                                label: 'MAS VENDIDOS',
                                cono: Icons.sell_outlined,
                                funcion: () {
                                  setState(() {
                                    varibles(2);
                                  });

                                  Navigator.of(context)
                                      .popAndPushNamed('/productosMasVentas');
                                },
                              ),
                              ItemMenu(
                                size: size,
                                label: 'MAS VISTOS',
                                cono: Icons.visibility,
                                funcion: () {
                                  setState(() {
                                    varibles(2);
                                  });

                                  Navigator.of(context)
                                      .popAndPushNamed('/productosMasVisitas');
                                },
                              ),
                              ItemMenu(
                                size: size,
                                label: 'MENOS VENDIDOS',
                                cono: Icons.sell_outlined,
                                funcion: () {
                                  setState(() {
                                    varibles(2);
                                  });

                                  Navigator.of(context)
                                      .popAndPushNamed('/productosMenosVentas');
                                },
                              ),
                              ItemMenu(
                                size: size,
                                label: 'MENOS VISTOS',
                                cono: Icons.visibility,
                                funcion: () {
                                  setState(() {
                                    varibles(2);
                                  });

                                  Navigator.of(context).popAndPushNamed(
                                      '/productosMenosVisitas');
                                },
                              ),
                              ItemMenu(
                                size: size,
                                label: 'TODOS',
                                cono: Icons.all_inbox,
                                funcion: () {
                                  setState(() {
                                    varibles(2);
                                  });

                                  Navigator.of(context)
                                      .popAndPushNamed('/productosTodos');
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ItemMenu(
                      size: size,
                      label: 'TOP CLIENTES',
                      cono: Icons.list_alt_sharp,
                      funcion: () {
                        setState(() {
                          varibles(2);
                        });
                        Navigator.of(context).popAndPushNamed('/clientes');
                      },
                    ),
                    ItemMenu(
                      size: size,
                      label: 'VENTAS GENERALES',
                      cono: Icons.shopping_cart_outlined,
                      funcion: () {
                        setState(() {
                          varibles(2);
                        });
                        Navigator.of(context).popAndPushNamed('/ventaGeneral');
                      },
                    ),
                    ItemMenu(
                      size: size,
                      label: 'VISITAS GENERALES',
                      cono: Icons.door_back_door_outlined,
                      funcion: () {
                        setState(() {
                          varibles(2);
                        });
                        Navigator.of(context)
                            .popAndPushNamed('/visitasGeneral');
                      },
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(200, 212, 194, 164),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                height: size.height * 0.06,
                child: ListTile(
                  title: normalText(
                    texto: 'Salir',
                    align: TextAlign.center,
                    tamano: 20,
                  ),
                  onTap: () {
                    setState(() {
                      visible = false;
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Inicio()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void varibles(int opcion) {
  if (opcion == 2) {
    visible = false;
    giro = false;
    nogiro = true;
  } else {
    visible = true;
    giro = true;
    nogiro = false;
  }
}
