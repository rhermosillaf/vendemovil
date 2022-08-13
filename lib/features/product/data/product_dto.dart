class ProductDTO {
  ProductDTO({
    required this.codigo,
    required this.descripcion,
    required this.categoria,
    required this.precio,
    required this.costo,
  });

  String codigo;
  String descripcion;
  String categoria;
  int precio;
  int costo;

  factory ProductDTO.fromJson(Map<String, dynamic> json) => ProductDTO(
        codigo: json["codigo"],
        descripcion: json["descripcion"],
        categoria: json["categoria"],
        precio: json["precio"],
        costo: json["costo"],
      );

  Map<String, dynamic> toJson() => {
        "codigo": codigo,
        "descripcion": descripcion,
        "categoria": categoria,
        "precio": precio,
        "costo": costo,
      };
}
