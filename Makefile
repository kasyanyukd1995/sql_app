### flutter pub get for all packages and main project
get_all:
	fvm flutter pub get

clean_all:
	fvm flutter clean

### make tests
test_all:
	fvm flutter test

### generating
gen:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

### localize
loc:   
	fvm flutter gen-l10n

### gen assets
gen_kit:   
	fluttergen  

### Format using std flutter
format:
	find . -not -path './.git/*' -not -path '*/.dart_tool/*' -name "*.dart" ! -name "*.g.dart" ! -name "*.mocks.dart" ! -name "*_test.dart" ! -name '*.swagger.*' ! -name '*.config.dart' ! -name '*.chopper.dart' ! -name '*.freezed.dart' ! -name 'app_localization*.dart' | tr '\n' ' ' | xargs fvm dart format --line-length=100
