import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sql_app/src/presentation/index.dart';
import 'package:sql_app/src/shared/di/provider_setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  final providersOverrides = await ProviderSetup.providersOverrides();

  runApp(ProviderScope(
    overrides: providersOverrides,
    child: const App(),
  ));
}
