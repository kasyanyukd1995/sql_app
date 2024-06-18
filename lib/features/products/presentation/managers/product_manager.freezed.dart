// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_manager.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Map<String, List<ProductEntity>> products, int cartItemsAmount)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            Map<String, List<ProductEntity>> products, int cartItemsAmount)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Map<String, List<ProductEntity>> products, int cartItemsAmount)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductPageLoadingState value) loading,
    required TResult Function(_ProductPageLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductPageLoadingState value)? loading,
    TResult? Function(_ProductPageLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductPageLoadingState value)? loading,
    TResult Function(_ProductPageLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPageStateCopyWith<$Res> {
  factory $ProductPageStateCopyWith(
          ProductPageState value, $Res Function(ProductPageState) then) =
      _$ProductPageStateCopyWithImpl<$Res, ProductPageState>;
}

/// @nodoc
class _$ProductPageStateCopyWithImpl<$Res, $Val extends ProductPageState>
    implements $ProductPageStateCopyWith<$Res> {
  _$ProductPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductPageLoadingStateImplCopyWith<$Res> {
  factory _$$ProductPageLoadingStateImplCopyWith(
          _$ProductPageLoadingStateImpl value,
          $Res Function(_$ProductPageLoadingStateImpl) then) =
      __$$ProductPageLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductPageLoadingStateImplCopyWithImpl<$Res>
    extends _$ProductPageStateCopyWithImpl<$Res, _$ProductPageLoadingStateImpl>
    implements _$$ProductPageLoadingStateImplCopyWith<$Res> {
  __$$ProductPageLoadingStateImplCopyWithImpl(
      _$ProductPageLoadingStateImpl _value,
      $Res Function(_$ProductPageLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductPageLoadingStateImpl extends _ProductPageLoadingState {
  const _$ProductPageLoadingStateImpl() : super._();

  @override
  String toString() {
    return 'ProductPageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPageLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Map<String, List<ProductEntity>> products, int cartItemsAmount)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            Map<String, List<ProductEntity>> products, int cartItemsAmount)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Map<String, List<ProductEntity>> products, int cartItemsAmount)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductPageLoadingState value) loading,
    required TResult Function(_ProductPageLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductPageLoadingState value)? loading,
    TResult? Function(_ProductPageLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductPageLoadingState value)? loading,
    TResult Function(_ProductPageLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProductPageLoadingState extends ProductPageState {
  const factory _ProductPageLoadingState() = _$ProductPageLoadingStateImpl;
  const _ProductPageLoadingState._() : super._();
}

/// @nodoc
abstract class _$$ProductPageLoadedStateImplCopyWith<$Res> {
  factory _$$ProductPageLoadedStateImplCopyWith(
          _$ProductPageLoadedStateImpl value,
          $Res Function(_$ProductPageLoadedStateImpl) then) =
      __$$ProductPageLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, List<ProductEntity>> products, int cartItemsAmount});
}

/// @nodoc
class __$$ProductPageLoadedStateImplCopyWithImpl<$Res>
    extends _$ProductPageStateCopyWithImpl<$Res, _$ProductPageLoadedStateImpl>
    implements _$$ProductPageLoadedStateImplCopyWith<$Res> {
  __$$ProductPageLoadedStateImplCopyWithImpl(
      _$ProductPageLoadedStateImpl _value,
      $Res Function(_$ProductPageLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? cartItemsAmount = null,
  }) {
    return _then(_$ProductPageLoadedStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as Map<String, List<ProductEntity>>,
      cartItemsAmount: null == cartItemsAmount
          ? _value.cartItemsAmount
          : cartItemsAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProductPageLoadedStateImpl extends _ProductPageLoadedState {
  const _$ProductPageLoadedStateImpl(
      {final Map<String, List<ProductEntity>> products = const {},
      this.cartItemsAmount = 0})
      : _products = products,
        super._();

  final Map<String, List<ProductEntity>> _products;
  @override
  @JsonKey()
  Map<String, List<ProductEntity>> get products {
    if (_products is EqualUnmodifiableMapView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_products);
  }

  @override
  @JsonKey()
  final int cartItemsAmount;

  @override
  String toString() {
    return 'ProductPageState.loaded(products: $products, cartItemsAmount: $cartItemsAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductPageLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.cartItemsAmount, cartItemsAmount) ||
                other.cartItemsAmount == cartItemsAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), cartItemsAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductPageLoadedStateImplCopyWith<_$ProductPageLoadedStateImpl>
      get copyWith => __$$ProductPageLoadedStateImplCopyWithImpl<
          _$ProductPageLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            Map<String, List<ProductEntity>> products, int cartItemsAmount)
        loaded,
  }) {
    return loaded(products, cartItemsAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            Map<String, List<ProductEntity>> products, int cartItemsAmount)?
        loaded,
  }) {
    return loaded?.call(products, cartItemsAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            Map<String, List<ProductEntity>> products, int cartItemsAmount)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(products, cartItemsAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductPageLoadingState value) loading,
    required TResult Function(_ProductPageLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductPageLoadingState value)? loading,
    TResult? Function(_ProductPageLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductPageLoadingState value)? loading,
    TResult Function(_ProductPageLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ProductPageLoadedState extends ProductPageState {
  const factory _ProductPageLoadedState(
      {final Map<String, List<ProductEntity>> products,
      final int cartItemsAmount}) = _$ProductPageLoadedStateImpl;
  const _ProductPageLoadedState._() : super._();

  Map<String, List<ProductEntity>> get products;
  int get cartItemsAmount;
  @JsonKey(ignore: true)
  _$$ProductPageLoadedStateImplCopyWith<_$ProductPageLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
