import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Buscador extends StatelessWidget {
  const Buscador({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.025),
      width: size.width,
      height: size.height * 0.05,
      child: Row(
        children: [
          FadeIn(
            duration: Duration(milliseconds: 1000),
            child: Container(
              alignment: Alignment.centerLeft,
              width: size.width * 0.1,
              height: size.width * 0.2,
              child: Icon(
                Icons.search_rounded,
                size: 35,
                color: Color.fromARGB(255, 70, 70, 70),
              ),
            ),
          ),
          Container(
              width: size.width * 0.8,
              height: size.width * 0.2,
              child: const TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  labelText: 'Buscar',
                  labelStyle: TextStyle(
                      fontFamily: 'Nixie',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(99, 0, 0, 0),
                      fontSize: 20),
                ),
              )),
        ],
      ),
    );
  }
}
