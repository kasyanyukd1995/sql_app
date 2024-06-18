import 'package:sql_app/src/domain/entities/cart_item.dart';
import 'package:sql_app/src/domain/entities/index.dart';
import 'package:sql_app/src/domain/entities/order_flow_entity.dart';
import 'package:sql_app/src/shared/react_value.dart';

class OrderFlowRepository {
  final _orderFlowEntity = MutableReactiveValue<OrderFlowEntity>(const OrderFlowEntity());

  ReactiveValue<OrderFlowEntity> get orderFlowEntity => _orderFlowEntity;

  void updateOrderFlow({
    int? tableNumber,
    List<CartItem>? products,
    WaiterEntity? waiter,
  }) {
    _orderFlowEntity.update(
      _orderFlowEntity.currentValue.copyWith(
        products: products ?? _orderFlowEntity.currentValue.products,
        tableNumber: tableNumber ?? _orderFlowEntity.currentValue.tableNumber,
        waiter: waiter ?? _orderFlowEntity.currentValue.waiter,
      ),
    );
  }

  void addProduct(
    ProductEntity product, {
    int quantity = 1,
  }) {
    List<CartItem> items = _orderFlowEntity.currentValue.products?.toList() ?? [];

    final hasItem = items.where((e) => e.productEntity == product).isNotEmpty;
    print('hasItem $hasItem');

    if (hasItem) {
      items = items
          .map(
            (e) => e.productEntity == product ? e.copyWith(quantity: e.quantity + quantity) : e,
          )
          .toList();
    } else {
      items.add(
        CartItem(productEntity: product, quantity: quantity),
      );
    }

    print(items);

    updateOrderFlow(products: items);
  }

  void removeProduct(ProductEntity product) {
    List<CartItem> items = _orderFlowEntity.currentValue.products?.toList() ?? [];

    items = items
        .map(
          (e) => e.productEntity == product ? e.copyWith(quantity: e.quantity - 1) : e,
        )
        .toList();

    items = items.where((e) => e.quantity != 0).toList();

    updateOrderFlow(products: items);
  }
}
