import 'package:go_router/go_router.dart';
import 'package:noor/core/di/setup.dart';
import 'package:noor/core/routing/route_path.dart';
import 'package:noor/features/onboarding/data/data_source/onboarings_list.dart';
import 'package:noor/features/onboarding/data/repos/onboarding_repo.dart';
import 'package:noor/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:noor/features/splash/presentation/view/splash_view.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: RoutePath.splash,
        builder: (context, state) => SplashView(),
      ),
      // Onboarding
      GoRoute(
        path: RoutePath.onboarding,
        builder: (context, state) => OnboardingView(
          onboardings: onboardingsList,
          onboardingRepo: getIt.get<OnboardingRepo>(),
        ),
      ),

      // Home
    ],
  );
}
