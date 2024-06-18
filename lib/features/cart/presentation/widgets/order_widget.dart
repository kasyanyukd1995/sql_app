import 'package:flutter/material.dart';
import 'package:sql_app/features/cart/presentation/vm/order_view_model.dart';

class OrderWidget extends StatelessWidget {
  final OrderViewModel order;
  final void Function(OrderViewModel model) increment;
  final void Function(OrderViewModel model) decrement;

  const OrderWidget({
    required this.order,
    required this.increment,
    required this.decrement,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(order.imageUrl),
      title: Text(order.primaryText),
      subtitle: Text(order.secondaryText),
      trailing: Column(
        children: [
          Text('Total: \$${order.totalPrice.toStringAsFixed(2)}'),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  decrement(order);
                },
              ),
              Text('${order.count}'),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  increment(order);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
