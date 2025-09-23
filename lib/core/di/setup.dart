import 'package:get_it/get_it.dart';
import 'package:noor/core/services/shared_prefs_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  // Shared Preferences
  final prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPrefsService>(
    () => SharedPrefsService(prefs),
  );

  // Onboarding
  _initHome();
}

void _initHome() {
  // Data Sources

  // Repos

  // UseCases
}
