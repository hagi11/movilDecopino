class Mercancias{
  List<Mercancia> datos = [];
  Mercancias.fromlist(List<dynamic> data){
    if(data == null) return;
    for (var item in data) {
      final mercancia = Mercancia.fromJsonMap(item);
      datos.add(mercancia);
    }

  }
}

class Mercancia{
    String? id;
    String? nombre;
    String? precio;
    String? vistas;
    String? compras;
    String? tipo;

    Mercancia({
      this.id,
      this.nombre,
      this.precio,
      this.vistas,
      this.compras,
      this.tipo,
    });

    Mercancia.fromJsonMap(Map<String,dynamic> data){
      id=data['id'];
      nombre=data['nombre'];
      precio=data['precio'];
      vistas=data['vistas'];
      compras=data['compras'];
      tipo=data['tipo'];
    }


}