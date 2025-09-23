import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static final router = GoRouter(
    routes: [
      // Onboarding
      // GoRoute(
      //   path: RoutePath.onboarding,
      //   builder: (context, state) => OnboardingView(
      //     onboardings: onboardingsList,
      //     onboardingRepo: getIt.get<OnboardingRepo>(),
      //   ),
      // ),

      // Home
    ],
  );
}
