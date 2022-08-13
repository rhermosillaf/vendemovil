import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entity/transaction.dart';

part 'transaction_view_model.freezed.dart';

@freezed
class TransactionViewModel with _$TransactionViewModel {
  factory TransactionViewModel({
    required String code,
    required String description,
    required int price,
    required int qtty,
  }) = _TransactionViewModel;

  const TransactionViewModel._();

  factory TransactionViewModel.fromDomain({
    required Transaction transaction,
  }) {
    return TransactionViewModel(
        code: transaction.code,
        description: transaction.description,
        price: transaction.price,
        qtty: transaction.qtty);
  }
}
