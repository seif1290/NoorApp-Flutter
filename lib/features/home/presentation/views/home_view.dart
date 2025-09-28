import 'package:flutter/material.dart';
import 'package:noor/core/localization/l10n/app_localizations.dart';
import 'package:noor/features/home/presentation/views/locale_picker.dart';
import 'package:provider/provider.dart';

import 'package:noor/core/localization/locale_provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context);
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.homeTitle),

        actions: [LocalePicker(provider: provider)],
      ),
      body: const Center(child: Text('Home View')),
    );
  }
}
