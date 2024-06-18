import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:sql_app/features/home/home_provider.di.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/shared/extensions/context_extensions.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final manager = ref.read(homeManagerProvider.notifier);
    final state = ref.watch(homeManagerProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: state.map(
            loading: (s) => const LoadingWidget(),
            loaded: (s) => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: manager.onWaiterTap,
                    child: Card(
                      child: Center(
                        child: Text(
                          'Официант',
                          style: context.textTheme.title.copyWith(color: SqlAppColors.main),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: manager.onCashierTap,
                    child: Card(
                      child: Center(
                        child: Text(
                          'Кассир',
                          style: context.textTheme.title.copyWith(color: SqlAppColors.main),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
