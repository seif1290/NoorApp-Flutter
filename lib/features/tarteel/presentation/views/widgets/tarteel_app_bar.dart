import 'package:flutter/material.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class TarteelAppBar extends StatelessWidget {
  const TarteelAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(AppLocalizations.of(context)!.tarteelTitle));
  }
}
