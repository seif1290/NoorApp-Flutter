import 'package:go_router/go_router.dart';
import 'package:noor/core/di/setup.dart';
import 'package:noor/core/routing/route_path.dart';
import 'package:noor/core/services/shared_prefs_service.dart';
import 'package:noor/features/home/data/models/surah_model.dart';
import 'package:noor/features/home/data/repos/quran_repo.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/views/home_view.dart';
import 'package:noor/features/home/presentation/views/surah_details_view.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => HomeCubit(quranRepo: getIt.get<QuranRepo>()),
          child: HomeView(),
        ),
      ),

      // GoRoute(
      //   path: RoutePath.homeWrapper,
      //   builder: (context, state) => HomeWrapper(),
      // ),
      GoRoute(
        path: RoutePath.surahDetails,

        builder: (context, state) {
          final SurahModel surahModel = state.extra as SurahModel;
          return SurahDetailsView(surahModel: surahModel);
        },
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
