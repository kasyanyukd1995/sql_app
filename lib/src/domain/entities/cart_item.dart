import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sql_app/src/domain/entities/index.dart';

part 'cart_item.freezed.dart';

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    required ProductEntity productEntity,
    required int quantity,
  }) = _CartItem;
}
