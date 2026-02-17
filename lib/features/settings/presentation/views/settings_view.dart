import 'package:flutter/material.dart';
import 'package:noor/features/settings/presentation/widgets/select_language_card.dart';
import 'package:noor/core/ui/widgets/custom_app_bar.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.settings,
        actions: const [],
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                // BlocProvider(
                //   create: (context) => RecitersCubit(
                //     recitersRepo: getIt.get<RecitersRepo>(),
                //     sharedPrefsService: getIt.get<SharedPrefsService>(),
                //   ),
                //   child: const SelectReciterCard(),
                // ),
                // Gap(16.h),
                SelectLanguageCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
