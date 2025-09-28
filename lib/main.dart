import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/di/setup.dart';
import 'package:noor/core/localization/l10n/app_localizations.dart';
import 'package:noor/core/localization/l10n/l_10n.dart';
import 'package:noor/core/localization/locale_provider.dart';
import 'package:noor/core/routing/app_router.dart';
import 'package:noor/core/services/shared_prefs_service.dart';
import 'package:noor/core/theme/app_theme.dart';
import 'package:provider/provider.dart';

void main() async {
  await setup();
  runApp(const NoorApp());
}

class NoorApp extends StatelessWidget {
  const NoorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: ChangeNotifierProvider(
        create: (context) => LocaleProvider(),
        builder: (context, child) {
          final provider = Provider.of<LocaleProvider>(context);
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: ThemeMode.system,
            routerConfig: AppRouter.router,
            supportedLocales: L10n.supportedLocales,
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            locale: getIt.get<SharedPrefsService>().appLocale != null
                ? Locale(getIt.get<SharedPrefsService>().appLocale!)
                : provider.locale,
          );
        },
      ),
    );
  }
}
