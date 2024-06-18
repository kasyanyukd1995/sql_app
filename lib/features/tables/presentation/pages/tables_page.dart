import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/features/tables/presentation/widgets/table_widget.dart';
import 'package:sql_app/features/tables/table_provider.di.dart';
import 'package:sql_app/src/presentation/index.dart';

@RoutePage()
class TablePage extends ConsumerWidget {
  const TablePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final manager = ref.read(tablesManagerProvider.notifier);
    final state = ref.watch(tablesManagerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Столы')),
      body: state.map(
        loading: (s) => const LoadingWidget(),
        loaded: (s) => GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          itemCount: s.tables.length,
          itemBuilder: (context, index) {
            return TableWidget(
              table: s.tables[index],
              onTap: () => manager.onTableTap(s.tables[index]),
            );
          },
        ),
      ),
    );
  }
}
