import 'package:flutter/material.dart';
import 'package:movil_app/widgets/widgetTexto/cursive.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('img/fondo33.jpg'), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  right: size.width * 0.1, top: size.height * 0.104),
              // height: size.height * 0.17,
              width: size.width,
              alignment: Alignment.centerRight,
              child: textCursive(
                texto: 'Decoración',
                tamano: 60,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: size.width * 0.2),
              // height: size.height * 0.25,
              width: size.width,
              alignment: Alignment.centerRight,
              child: textCursive(
                texto: 'Los',
                tamano: 60,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: size.width * 0.2),
              // height: size.height * 0.23,
              width: size.width,
              alignment: Alignment.centerRight,
              child: textCursive(
                texto: 'Pinos',
                tamano: 60,
              ),
            ),
            Container(
              height: size.height * 0.55,
              width: size.width,
              // padding: EdgeInsets.only(
              //     bottom: size.height * 0.07, left: size.width * 0.3),
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Container(
                  height: size.height * 0.05,
                  width: size.width * 0.5,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.green.withOpacity(0.4),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'MrsSaint',
                        fontWeight: FontWeight.bold,
                        // color: Colors.white,
                        color: Color.fromARGB(200, 255, 255, 255),
                        fontSize: 35),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
