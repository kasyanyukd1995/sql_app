import 'package:flutter/material.dart';
import 'package:sql_app/features/cart/presentation/vm/order_view_model.dart';
import 'package:sql_app/features/cart/presentation/widgets/order_widget.dart';

class CartPage extends StatelessWidget {
  final List<OrderViewModel> orders;

  CartPage({required this.orders});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          return OrderWidget(order: orders[index]);
        },
      ),
    );
  }
}
