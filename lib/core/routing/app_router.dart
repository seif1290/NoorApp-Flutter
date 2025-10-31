import 'package:go_router/go_router.dart';
import 'package:noor/core/di/setup.dart';
import 'package:noor/core/routing/route_path.dart';
import 'package:noor/core/services/shared_prefs_service.dart';
import 'package:noor/features/home/data/repos/quran_repo.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/views/home_view.dart';
import 'package:noor/features/onboarding/data/data_source/onboarings_list.dart';
import 'package:noor/features/onboarding/data/repos/onboarding_repo.dart';
import 'package:noor/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    initialLocation: _initialLocation,
    routes: [
      // Onboarding
      GoRoute(
        path: RoutePath.onboarding,
        builder: (context, state) => OnboardingView(
          onboardings: onboardingsList(context),
          onboardingRepo: getIt.get<OnboardingRepo>(),
        ),
      ),

      // Home
      GoRoute(
        path: RoutePath.home,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => HomeCubit(quranRepo: getIt.get<QuranRepo>()),
            ),
            BlocProvider(create: (context) => AudioPlayerCubit()),
          ],
          child: const HomeView(),
        ),
      ),
    ],
  );

  static String get _initialLocation {
    if (getIt.get<SharedPrefsService>().isOnboardingFinished) {
      return RoutePath.home;
    } else {
      return RoutePath.onboarding;
    }
  }
}
