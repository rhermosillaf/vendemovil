import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  const ProductEntity({
    required this.codigo,
    required this.descripcion,
    required this.categoria,
    required this.precio,
    required this.costo,
  });

  final int codigo;
  final String descripcion;
  final String categoria;
  final String precio;
  final String costo;

  @override
  List<Object?> get props => [
        codigo,
        descripcion,
        categoria,
        precio,
        costo,
      ];
}
