import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sql_app/features/navigation/router/app_router.dart';
import 'package:sql_app/features/tables/presentation/vm/table_view_model.dart';
import 'package:sql_app/src/data/repositories/index.dart';
import 'package:sql_app/src/data/repositories/order_flow_repository.dart';
import 'package:sql_app/src/shared/base/base_manager.dart';

part 'tables_manager.freezed.dart';
part 'tables_page_state.dart';

class TablesManager extends BaseManager<TablesPageState> {
  final WaiterRepository _waiterRepository;
  final OrderFlowRepository _orderFlowRepository;

  TablesManager(
    this._waiterRepository,
    this._orderFlowRepository,
  ) : super(const TablesPageState.loading());

  @override
  Future<void> onInit() async {
    state = TablesPageState.loaded(
      tables: List.generate(10, (index) => index + 1)
          .map((e) => TableViewModel(id: e, name: 'Стол №$e'))
          .toList(),
    );
  }

  void onTableTap(TableViewModel tableViewModel) async {
    final waiter = (await _waiterRepository.getWaiters()).first;
    _orderFlowRepository.updateOrderFlow(
      waiter: waiter,
      tableNumber: tableViewModel.id,
    );

    routing.push(const ProductsRoute());
  }
}
