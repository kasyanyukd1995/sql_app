part of 'home_manager.dart';

@freezed
class HomePageState with _$HomePageState {
  const HomePageState._();

  const factory HomePageState.loading() = _HomePageLoadingState;

  const factory HomePageState.loaded() = _HomePageLoadedState;
}
