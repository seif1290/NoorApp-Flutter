import 'package:flutter/material.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/features/home/presentation/views/locale_picker.dart';
import 'package:provider/provider.dart';

import 'package:noor/localization/locale_provider.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key, required this.arMsg, required this.enMsg});
  final String arMsg;
  final String enMsg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            LocalePicker(provider: Provider.of<LocaleProvider>(context)),
          ],
        ),
      ),
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.homeTitle)),
      body: Center(
        child: Text(
          AppLocalizations.of(context)?.localeName == 'ar' ? arMsg : enMsg,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
