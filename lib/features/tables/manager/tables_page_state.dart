part of 'tables_manager.dart';

@freezed
class TablesPageState with _$TablesPageState {
  const TablesPageState._();

  const factory TablesPageState.loading() = _TablesPageLoadingState;

  const factory TablesPageState.loaded({
    required List<TableViewModel> tables,
  }) = _TablesPageLoadedState;
}
