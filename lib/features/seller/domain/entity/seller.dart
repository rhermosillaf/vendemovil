import 'package:equatable/equatable.dart';

class SellerEntity extends Equatable {
  const SellerEntity({
    required this.code,
    required this.name,
    required this.tax,
    required this.discount,
  });

  final int code;
  final String name;
  final String tax;
  final String discount;

  @override
  List<Object?> get props => [code, name, tax, discount];
}
