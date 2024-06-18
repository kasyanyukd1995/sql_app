import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sql_app/features/cart/presentation/vm/order_view_model.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/shared/extensions/context_extensions.dart';

class CartItemWidget extends StatelessWidget {
  final CartItemViewModel order;
  final void Function(CartItemViewModel model)? increment;
  final void Function(CartItemViewModel model)? decrement;

  const CartItemWidget({
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
      isThreeLine: true,
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Total: \$${order.totalPrice.toStringAsFixed(2)}'),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  child: const CircleAvatar(
                    child: Icon(Icons.remove),
                  ),
                  onTap: () => decrement?.call(order)),
              const Gap(6),
              Text(
                '${order.count}',
                style: context.textTheme.paragraphLStrong,
              ),
              const Gap(6),
              InkWell(
                  child: const CircleAvatar(
                    child: Icon(Icons.add),
                  ),
                  onTap: () => increment?.call(order)),
            ],
          ),
        ],
      ),
    );
  }
}
