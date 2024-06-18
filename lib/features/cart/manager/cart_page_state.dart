part of 'cart_manager.dart';

@freezed
class CartPageState with _$CartPageState {
  const factory CartPageState({
    required List<CartItemViewModel> items,
  }) = _CartPageState;
}
