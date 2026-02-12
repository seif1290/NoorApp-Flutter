import 'package:go_router/go_router.dart';
import 'package:noor/core/di/setup.dart';
import 'package:noor/core/routing/routes.dart';
import 'package:noor/core/services/shared_prefs_service.dart';
import 'package:noor/features/tarteel/data/repos/audio_repo.dart';
import 'package:noor/features/tarteel/data/repos/quran_repo.dart';
import 'package:noor/features/tarteel/domain/use_cases/load_surah_with_audio_use_case.dart';
import 'package:noor/features/tarteel/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/tarteel/presentation/view_models/tarteel_bloc/tarteel_bloc.dart';
import 'package:noor/features/tarteel/presentation/views/tarteel_view.dart';
import 'package:noor/features/onboarding/data/data_source/onboarings_list.dart';
import 'package:noor/features/onboarding/data/repos/onboarding_repo.dart';
import 'package:noor/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/features/settings/data/repos/reciters_repo.dart';
import 'package:noor/features/settings/presentation/views/settings_view.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: _initialLocation,
    routes: [
      // Onboarding
      GoRoute(
        path: Routes.onboarding,
        builder: (context, state) => OnboardingView(
          onboardings: onboardingsList(context),
          onboardingRepo: getIt.get<OnboardingRepo>(),
        ),
      ),

      // Home
      GoRoute(
        path: Routes.home,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => TarteelBloc(getIt.get<QuranRepo>()),
            ),

            BlocProvider(
              create: (context) => AudioPlayerCubit(
                audioRepo: getIt.get<AudioRepo>(),
                recitersRepo: getIt.get<RecitersRepo>(),
                loadSurahWithAudioUseCase: getIt
                    .get<LoadSurahWithAudioUseCase>(),
              ),
            ),
          ],
          child: const TarteelView(),
        ),
      ),
      // Settings
      GoRoute(
        path: Routes.settings,
        builder: (context, state) => const SettingsView(),
      ),
    ],
  );

  static String get _initialLocation {
    if (getIt.get<SharedPrefsService>().isOnboardingFinished) {
      return Routes.home;
    } else {
      return Routes.onboarding;
    }
  }
}
