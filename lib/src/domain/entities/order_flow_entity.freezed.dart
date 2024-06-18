// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_flow_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderFlowEntity {
  int? get tableNumber => throw _privateConstructorUsedError;
  List<CartItem>? get products => throw _privateConstructorUsedError;
  WaiterEntity? get waiter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderFlowEntityCopyWith<OrderFlowEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFlowEntityCopyWith<$Res> {
  factory $OrderFlowEntityCopyWith(
          OrderFlowEntity value, $Res Function(OrderFlowEntity) then) =
      _$OrderFlowEntityCopyWithImpl<$Res, OrderFlowEntity>;
  @useResult
  $Res call({int? tableNumber, List<CartItem>? products, WaiterEntity? waiter});

  $WaiterEntityCopyWith<$Res>? get waiter;
}

/// @nodoc
class _$OrderFlowEntityCopyWithImpl<$Res, $Val extends OrderFlowEntity>
    implements $OrderFlowEntityCopyWith<$Res> {
  _$OrderFlowEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableNumber = freezed,
    Object? products = freezed,
    Object? waiter = freezed,
  }) {
    return _then(_value.copyWith(
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
      waiter: freezed == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as WaiterEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WaiterEntityCopyWith<$Res>? get waiter {
    if (_value.waiter == null) {
      return null;
    }

    return $WaiterEntityCopyWith<$Res>(_value.waiter!, (value) {
      return _then(_value.copyWith(waiter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderFlowEntityImplCopyWith<$Res>
    implements $OrderFlowEntityCopyWith<$Res> {
  factory _$$OrderFlowEntityImplCopyWith(_$OrderFlowEntityImpl value,
          $Res Function(_$OrderFlowEntityImpl) then) =
      __$$OrderFlowEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? tableNumber, List<CartItem>? products, WaiterEntity? waiter});

  @override
  $WaiterEntityCopyWith<$Res>? get waiter;
}

/// @nodoc
class __$$OrderFlowEntityImplCopyWithImpl<$Res>
    extends _$OrderFlowEntityCopyWithImpl<$Res, _$OrderFlowEntityImpl>
    implements _$$OrderFlowEntityImplCopyWith<$Res> {
  __$$OrderFlowEntityImplCopyWithImpl(
      _$OrderFlowEntityImpl _value, $Res Function(_$OrderFlowEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableNumber = freezed,
    Object? products = freezed,
    Object? waiter = freezed,
  }) {
    return _then(_$OrderFlowEntityImpl(
      tableNumber: freezed == tableNumber
          ? _value.tableNumber
          : tableNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
      waiter: freezed == waiter
          ? _value.waiter
          : waiter // ignore: cast_nullable_to_non_nullable
              as WaiterEntity?,
    ));
  }
}

/// @nodoc

class _$OrderFlowEntityImpl extends _OrderFlowEntity {
  const _$OrderFlowEntityImpl(
      {this.tableNumber, final List<CartItem>? products, this.waiter})
      : _products = products,
        super._();

  @override
  final int? tableNumber;
  final List<CartItem>? _products;
  @override
  List<CartItem>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WaiterEntity? waiter;

  @override
  String toString() {
    return 'OrderFlowEntity(tableNumber: $tableNumber, products: $products, waiter: $waiter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderFlowEntityImpl &&
            (identical(other.tableNumber, tableNumber) ||
                other.tableNumber == tableNumber) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.waiter, waiter) || other.waiter == waiter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tableNumber,
      const DeepCollectionEquality().hash(_products), waiter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderFlowEntityImplCopyWith<_$OrderFlowEntityImpl> get copyWith =>
      __$$OrderFlowEntityImplCopyWithImpl<_$OrderFlowEntityImpl>(
          this, _$identity);
}

abstract class _OrderFlowEntity extends OrderFlowEntity {
  const factory _OrderFlowEntity(
      {final int? tableNumber,
      final List<CartItem>? products,
      final WaiterEntity? waiter}) = _$OrderFlowEntityImpl;
  const _OrderFlowEntity._() : super._();

  @override
  int? get tableNumber;
  @override
  List<CartItem>? get products;
  @override
  WaiterEntity? get waiter;
  @override
  @JsonKey(ignore: true)
  _$$OrderFlowEntityImplCopyWith<_$OrderFlowEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
