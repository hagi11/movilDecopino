import 'package:flutter/material.dart';
import 'package:movil_app/widgets/widgetTexto/normalTexto.dart';
import 'package:movil_app/widgets/widgetTexto/titulo.dart';
import 'package:url_launcher/url_launcher.dart';



class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: size.width,
              height: size.height,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 232, 226, 212),

                //   image: DecorationImage(
                //       image: AssetImage('img/fondo4.jpg'), fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: size.height * 0.15,
                      bottom: size.height * 0.2,
                    ),
                    child: Container(
                      height: size.width * 0.35,
                      width: size.width * 0.35,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('img/logo.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),

                  Container(
                      margin: EdgeInsets.only(
                          right: size.width * 0.05,
                          left: size.width * 0.05,
                          top: 20),
                      child: const TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Correo',
                          labelStyle: TextStyle(
                              fontFamily: 'Nixie',
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(99, 0, 0, 0),
                              fontSize: 20),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              fontFamily: 'Nixie',
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(99, 0, 0, 0),
                              fontSize: 20),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  // MaterialButton(onPressed: onPressed),
                  Container(
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.4),
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
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                    child: MaterialButton(
                        height: 40,
                        child: normalText(
                          texto: 'Ingresar',
                          tamano: 21,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/pagInicial');
                        }),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  InkWell(
                    onTap: () {
                      launch('https://decoracioneslospinos.com/recuperarContrasena');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontFamily: 'Nixie',
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(197, 119, 119, 119),
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
