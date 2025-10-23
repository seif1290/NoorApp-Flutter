import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/di/setup.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/localization/l10n/l_10n.dart';
import 'package:noor/localization/locale_provider.dart';
import 'package:noor/core/routing/app_router.dart';
import 'package:noor/core/services/shared_prefs_service.dart';
import 'package:noor/core/theme/app_theme_data.dart';
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
        create: (context) => LocaleProvider(getIt.get<SharedPrefsService>()),
        builder: (context, child) {
          final provider = Provider.of<LocaleProvider>(context);
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppThemeData.lightTheme,
            routerConfig: AppRouter.router,
            supportedLocales: L10n.supportedLocales,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            locale: provider.locale,
          );
        },
      ),
    );
  }
}
