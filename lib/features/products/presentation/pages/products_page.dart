import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'package:sql_app/features/products/products_provider.di.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/shared/extensions/context_extensions.dart';

@RoutePage()
class ProductsPage extends ConsumerStatefulWidget {
  const ProductsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductsPageState();
}

class _ProductsPageState extends ConsumerState<ProductsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final manager = ref.read(productsManagerProvider.notifier);
    final state = ref.watch(productsManagerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Товары'),
      ),
      floatingActionButton: state.map(
        loading: (s) => null,
        loaded: (s) => s.cartItemsAmount > 0
            ? FloatingActionButton(
                onPressed: manager.onCartTap,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.shopping_basket),
                    const Gap(4),
                    Text(
                      s.cartItemsAmount.toString(),
                    ),
                  ],
                ),
              )
            : null,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: state.map(
            loading: (s) => const LoadingWidget(),
            loaded: (s) {
              final items = s.products.entries.toList();

              return ListView.separated(
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    title: Text(
                      items[index].key,
                      style: context.textTheme.paragraphLStrong,
                    ),
                    children: items[index]
                        .value
                        .map(
                          (e) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: SqlAppColors.bgGrey,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJvrjzxOfQpQaqRvdz-oJJS4_evtYSw8op2g&s'),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(e.name),
                                        const Gap(8),
                                        Text(e.description),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(e.price.toString()),
                                      const Gap(8),
                                      IconButton(
                                        color: SqlAppColors.white,
                                        style: IconButton.styleFrom(
                                            backgroundColor: SqlAppColors.main),
                                        onPressed: () => manager.onProductTap(e),
                                        icon: const Icon(Icons.add),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  );
                },
                separatorBuilder: (context, index) => const Gap(16),
                itemCount: s.products.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
