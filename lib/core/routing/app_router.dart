import 'package:go_router/go_router.dart';
import 'package:noor/core/di/setup.dart';
import 'package:noor/core/routing/routes.dart';
import 'package:noor/core/services/local/shared_prefs_service.dart';
import 'package:noor/core/widgets/primary_scaffold.dart';
import 'package:noor/features/onboarding/data/data_source/onboarings_list.dart';
import 'package:noor/features/onboarding/data/repos/onboarding_repo.dart';
import 'package:noor/features/onboarding/presentation/views/onboarding_view.dart';
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

      // Primary Scaffold
      GoRoute(
        path: Routes.primaryScaffold,
        builder: (context, state) => const PrimaryScaffold(),
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
      return Routes.primaryScaffold;
    } else {
      return Routes.onboarding;
    }
  }
}
