import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:sql_app/features/cart/order_provider.di.dart';

import 'package:sql_app/features/cart/presentation/widgets/order_widget.dart';
import 'package:sql_app/src/presentation/index.dart';

@RoutePage()
class CartPage extends ConsumerWidget {
  const CartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.read(cartManagerProvider.notifier);
    final state = ref.watch(cartManagerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Корзина товаров')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.items.length,
                  itemBuilder: (context, index) {
                    return CartItemWidget(
                      order: state.items[index],
                      increment: manager.increment,
                      decrement: manager.decrement,
                    );
                  },
                ),
              ),
              const Gap(16),
              SqlAppButton.primary(
                label: 'Сделать заказ',
                onPressed: manager.onMakeOrderTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
