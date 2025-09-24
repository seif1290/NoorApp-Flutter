import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:noor/core/services/shared_prefs_service.dart';
import 'package:noor/features/onboarding/data/repos/onboarding_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Shared Preferences
  final prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPrefsService>(
    () => SharedPrefsService(prefs),
  );

  // Onboarding
  getIt.registerLazySingleton<OnboardingRepo>(
    () => OnboardingRepo(sharedPrefsService: getIt.get<SharedPrefsService>()),
  );
  _initHome();
}

void _initHome() {
  // Data Sources

  // Repos

  // UseCases
}
