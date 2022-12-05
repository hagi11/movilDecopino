import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movil_app/api/AllApi.dart';
import 'package:movil_app/models/mercancia_model.dart';

class MercanciasProvider extends ChangeNotifier {
  List<Mercancia> mercancias = [];

  getMercancias() async {
    // String url = 'webservices.php?case=1';
    String url = '&case=1';
    print(Api.url + url);

    final rpta = await Api.httpGet(url);
    print(rpta);
    // final data = jsonDecode(rpta);

    // final Mercancias mercancias = Mercancias.fromlist(data['rpta']);

    // this.mercancias = mercancias.datos;
    // notifyListeners();
  }
}
