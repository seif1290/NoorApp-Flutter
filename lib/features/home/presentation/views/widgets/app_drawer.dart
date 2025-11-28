import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/features/home/presentation/views/widgets/locale_picker.dart';
import 'package:noor/localization/locale_provider.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const Gap(AppValues.padding32),
          LocalePicker(provider: Provider.of<LocaleProvider>(context)),
        ],
      ),
    );
  }
}
