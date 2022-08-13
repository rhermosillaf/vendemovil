// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransactionViewModel {
  String get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get qtty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionViewModelCopyWith<TransactionViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionViewModelCopyWith<$Res> {
  factory $TransactionViewModelCopyWith(TransactionViewModel value,
          $Res Function(TransactionViewModel) then) =
      _$TransactionViewModelCopyWithImpl<$Res>;
  $Res call({String code, String description, int price, int qtty});
}

/// @nodoc
class _$TransactionViewModelCopyWithImpl<$Res>
    implements $TransactionViewModelCopyWith<$Res> {
  _$TransactionViewModelCopyWithImpl(this._value, this._then);

  final TransactionViewModel _value;
  // ignore: unused_field
  final $Res Function(TransactionViewModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? qtty = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      qtty: qtty == freezed
          ? _value.qtty
          : qtty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TransactionViewModelCopyWith<$Res>
    implements $TransactionViewModelCopyWith<$Res> {
  factory _$$_TransactionViewModelCopyWith(_$_TransactionViewModel value,
          $Res Function(_$_TransactionViewModel) then) =
      __$$_TransactionViewModelCopyWithImpl<$Res>;
  @override
  $Res call({String code, String description, int price, int qtty});
}

/// @nodoc
class __$$_TransactionViewModelCopyWithImpl<$Res>
    extends _$TransactionViewModelCopyWithImpl<$Res>
    implements _$$_TransactionViewModelCopyWith<$Res> {
  __$$_TransactionViewModelCopyWithImpl(_$_TransactionViewModel _value,
      $Res Function(_$_TransactionViewModel) _then)
      : super(_value, (v) => _then(v as _$_TransactionViewModel));

  @override
  _$_TransactionViewModel get _value => super._value as _$_TransactionViewModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? qtty = freezed,
  }) {
    return _then(_$_TransactionViewModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      qtty: qtty == freezed
          ? _value.qtty
          : qtty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TransactionViewModel extends _TransactionViewModel {
  _$_TransactionViewModel(
      {required this.code,
      required this.description,
      required this.price,
      required this.qtty})
      : super._();

  @override
  final String code;
  @override
  final String description;
  @override
  final int price;
  @override
  final int qtty;

  @override
  String toString() {
    return 'TransactionViewModel(code: $code, description: $description, price: $price, qtty: $qtty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionViewModel &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.qtty, qtty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(qtty));

  @JsonKey(ignore: true)
  @override
  _$$_TransactionViewModelCopyWith<_$_TransactionViewModel> get copyWith =>
      __$$_TransactionViewModelCopyWithImpl<_$_TransactionViewModel>(
          this, _$identity);
}

abstract class _TransactionViewModel extends TransactionViewModel {
  factory _TransactionViewModel(
      {required final String code,
      required final String description,
      required final int price,
      required final int qtty}) = _$_TransactionViewModel;
  _TransactionViewModel._() : super._();

  @override
  String get code;
  @override
  String get description;
  @override
  int get price;
  @override
  int get qtty;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionViewModelCopyWith<_$_TransactionViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
