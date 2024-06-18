import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/src/providers/app_providers.di.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ProviderSetup {
  ProviderSetup._();

  static Future<List<Override>> providersOverrides() async {
    final sharedPreferences = await SharedPreferences.getInstance();

    return [
      sharedPreferencesProvider.overrideWithValue(sharedPreferences),
    ];
  }
}
