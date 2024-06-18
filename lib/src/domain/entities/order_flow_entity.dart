import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sql_app/src/domain/entities/cart_item.dart';
import 'package:sql_app/src/domain/entities/index.dart';

part 'order_flow_entity.freezed.dart';

@freezed
class OrderFlowEntity with _$OrderFlowEntity {
  const factory OrderFlowEntity({
    int? tableNumber,
    List<CartItem>? products,
    WaiterEntity? waiter,
  }) = _OrderFlowEntity;

  const OrderFlowEntity._();

  bool get isEmpty => tableNumber == null && products == null&& waiter == null;
}
