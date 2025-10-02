import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:noor/core/network/dio_handler.dart';
import 'package:noor/core/services/shared_prefs_service.dart';
import 'package:noor/core/simple_bloc_observer.dart';
import 'package:noor/features/home/data/data_sources/quran_data_source.dart';
import 'package:noor/features/home/data/repos/quran_repo.dart';
import 'package:noor/features/home/data/repos/quran_repo_impl.dart';
import 'package:noor/features/onboarding/data/repos/onboarding_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  // Dio
  DioHandler.setup();
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
  getIt.registerLazySingleton<QuranDataSource>(
    () => QuranDataSourceImpl(dio: getIt.get<DioHandler>().dio),
  );
  // Repos
  getIt.registerLazySingleton<QuranRepo>(
    () => QuranRepoImpl(quranDataSource: getIt.get<QuranDataSource>()),
  );
  // UseCases
}
