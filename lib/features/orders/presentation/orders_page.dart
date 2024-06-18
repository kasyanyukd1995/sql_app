import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:sql_app/features/cart/presentation/vm/order_view_model.dart';
import 'package:sql_app/features/cart/presentation/widgets/order_widget.dart';
import 'package:sql_app/src/domain/entities/order_flow_entity.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/providers/repositories_providers.di.dart';

@RoutePage()
class OrdersPage extends ConsumerWidget {
  const OrdersPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ordersRepository = ref.read(ordersRepositoryProvider);
    final orders = ordersRepository.orders;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return OrderWidget(
                order: orders[index],
              );
            },
            separatorBuilder: (context, index) => const Gap(16),
            itemCount: orders.length,
          ),
        ),
      ),
    );
  }
}

class OrderWidget extends StatelessWidget {
  final OrderFlowEntity order;

  const OrderWidget({
    required this.order,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cartItems = order.products ?? [];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Официант: ${order.waiter?.firstName ?? ''}  ${order.waiter?.lastName ?? ''}'),
            const Gap(16),
            Text('Стол №${order.tableNumber}'),
            const Gap(16),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => CartItemWidget(
                  order: CartItemViewModel(
                    domain: cartItems[index].productEntity,
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJvrjzxOfQpQaqRvdz-oJJS4_evtYSw8op2g&s',
                    primaryText: cartItems[index].productEntity.name,
                    secondaryText: cartItems[index].productEntity.description,
                    totalPrice: cartItems[index].productEntity.price * cartItems[index].quantity,
                    count: cartItems[index].quantity,
                  ),
                  increment: null,
                  decrement: null),
              separatorBuilder: (context, index) => Gap(8),
              itemCount: cartItems.length,
            ),
            const Gap(16),
            SqlAppButton.primary(
              label: 'Рассчитать',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class OrderViewModel {
  final String primaryText;
  final String secondaryText;
  final String waiterName;
  final double totalPrice;
  final int count;
  final OrderFlowEntity orderFlowEntity;

  OrderViewModel({
    required this.primaryText,
    required this.secondaryText,
    required this.waiterName,
    required this.totalPrice,
    required this.count,
    required this.orderFlowEntity,
  });
}
