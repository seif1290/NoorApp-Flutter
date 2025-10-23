import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/core/utils/app_values.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';
import 'package:noor/features/home/presentation/views/locale_picker.dart';
import 'package:noor/features/home/presentation/views/surahs_list_view.dart';
import 'package:provider/provider.dart';

import 'package:noor/localization/locale_provider.dart';

class HomeView extends StatelessWidget {
  final List<SurahModel> surahs;
  final Function(int surahNumber)? onSurahCardTab;
  const HomeView({super.key, required this.surahs, this.onSurahCardTab});
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
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.homeTitle),
        actions: [
          IconButton(
            onPressed: () {
              // TODO: Implement search functionality
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: AppValues.padding8.w),
        child: SurahsListView(
          key: const PageStorageKey<String>('home'),
          surahs: surahs,
          onCardTab: onSurahCardTab ?? (_) {},
        ),
      ),
    );
  }
}
