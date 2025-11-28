import 'package:flutter/material.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(AppLocalizations.of(context)!.homeTitle),
      actions: [
        IconButton(
          onPressed: () {
            //TODO: Search Feature
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
