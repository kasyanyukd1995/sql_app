part of 'product_manager.dart';

@freezed
class ProductPageState with _$ProductPageState {
  const ProductPageState._();

  const factory ProductPageState.loading() = _ProductPageLoadingState;

  const factory ProductPageState.loaded({
    @Default({}) Map<String, List<ProductEntity>> products,
    @Default(0) int cartItemsAmount,
  }) = _ProductPageLoadedState;
}
