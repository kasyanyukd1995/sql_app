import 'package:flutter/material.dart';
import 'package:sql_app/features/cart/presentation/vm/order_view_model.dart';

class OrderWidget extends StatelessWidget {
  final OrderViewModel order;

  OrderWidget({required this.order});

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
                  // Decrease count
                },
              ),
              Text('${order.count}'),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  // Increase count
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
