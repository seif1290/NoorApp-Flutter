import 'package:audio_service/audio_service.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:noor/core/services/remote/audio_player_handler.dart';
import 'package:noor/core/services/local/shared_prefs_service.dart';
import 'package:noor/core/utils/simple_bloc_observer.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/services/local/local_assets_service.dart';
import 'package:noor/features/tarteel/data/repos/audio_repo.dart';
import 'package:noor/features/tarteel/data/repos/quran_repo.dart';
import 'package:noor/features/tarteel/domain/use_cases/load_surah_with_audio_use_case.dart';
import 'package:noor/features/onboarding/data/repos/onboarding_repo.dart';
import 'package:noor/features/settings/data/repos/reciters_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();

  // Services

  final prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPrefsService>(
    () => SharedPrefsService(prefs),
  );

  getIt.registerLazySingleton<LocalAssetsService>(() => LocalAssetsService());

  // Onboarding
  getIt.registerLazySingleton<OnboardingRepo>(
    () => OnboardingRepo(sharedPrefsService: getIt.get<SharedPrefsService>()),
  );
  final audioHandler = await AudioService.init(
    builder: () => AudioPlayerHandler(),
    config: const AudioServiceConfig(
      androidNotificationChannelId: 'com.mycompany.myapp.channel.audio',
      androidNotificationChannelName: 'Audio playback',
      androidNotificationOngoing: true,
      androidNotificationIcon: 'mipmap/launcher_icon',
      notificationColor: AppColors.primary500,
    ),
  );
  getIt.registerLazySingleton<AudioPlayerHandler>(() => audioHandler);

  _initHome();
  _initSettings();
}

void _initHome() {
  // Repos
  getIt.registerLazySingleton<QuranRepo>(
    () => QuranRepoImpl(quranDataSource: getIt.get<LocalAssetsService>()),
  );
  getIt.registerLazySingleton<AudioRepo>(
    () => AudioRepoImpl(
      sharedPrefsService: getIt.get<SharedPrefsService>(),
      quranAssetsService: getIt.get<LocalAssetsService>(),
      audioPlayerHandler: getIt.get<AudioPlayerHandler>(),
    ),
  );

  // Use Cases
  getIt.registerLazySingleton<LoadSurahWithAudioUseCase>(
    () => LoadSurahWithAudioUseCase(
      quranRepo: getIt.get<QuranRepo>(),
      audioRepo: getIt.get<AudioRepo>(),
    ),
  );
}

void _initSettings() {
  // Repos
  getIt.registerLazySingleton<RecitersRepo>(
    () => RecitersRepo(
      quranAssetsService: getIt.get<LocalAssetsService>(),
      sharedPrefsService: getIt.get<SharedPrefsService>(),
    ),
  );
}
