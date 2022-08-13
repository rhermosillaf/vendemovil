import 'package:equatable/equatable.dart';

class Transaction extends Equatable {
  const Transaction({
    required this.code,
    required this.description,
    required this.price,
    required this.qtty,
  });

  final String code;
  final String description;
  final int price;
  final int qtty;

  @override
  List<Object?> get props => [
        code,
        description,
        price,
        qtty,
      ];
}
