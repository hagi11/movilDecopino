import 'package:flutter/material.dart';
BoxDecoration Decoboxsahdow(Color color) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(5),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(80, 78, 78, 78),
          spreadRadius: 1,
          blurRadius: 5,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    );
  }
