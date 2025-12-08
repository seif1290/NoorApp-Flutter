import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/data/services/shared_prefs_service.dart';
import 'package:noor/core/di/setup.dart';
import 'package:noor/features/settings/data/repos/reciters_repo.dart';
import 'package:noor/features/settings/presentation/view_models/settings_cubit/reciters_cubit.dart';
import 'package:noor/features/settings/presentation/views/widgets/select_reciter_card.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${AppLocalizations.of(context)?.settings}')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                BlocProvider(
                  create: (context) => RecitersCubit(
                    recitersRepo: getIt.get<RecitersRepo>(),
                    sharedPrefsService: getIt.get<SharedPrefsService>(),
                  ),
                  child: const SelectReciterCard(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
