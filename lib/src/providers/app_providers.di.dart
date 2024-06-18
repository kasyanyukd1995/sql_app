import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/features/localization/index.dart';
import 'package:sql_app/src/data/shared_pref_storage_impl.dart';
import 'package:sql_app/src/domain/shared_pref_storage/shared_pref_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPrefStorageProvider = Provider<SharedPrefStorage>(
  (ref) => SharedPrefStorageImpl(ref.read(sharedPreferencesProvider)),
);

final sharedPreferencesProvider = Provider<SharedPreferences>((ref) => throw UnimplementedError());

final appLocalizationsProvider = StateProvider<AppLocalizations>((ref) {
  return AppLocalizationsRu();
});
