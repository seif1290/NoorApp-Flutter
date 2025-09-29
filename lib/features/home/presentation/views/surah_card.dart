import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/localization/l10n/app_localizations.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';
import 'package:noor/features/home/data/models/revelation_type.dart';
import 'package:noor/features/home/data/models/surah_model.dart';

class SurahCard extends StatelessWidget {
  const SurahCard({super.key, required this.surahModel, this.onTap});
  final SurahModel surahModel;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final languageCode = Localizations.localeOf(context).languageCode;
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.play_circle_outline,
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        title: Text(
          languageCode == 'ar' ? surahModel.name : surahModel.englishName,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppValues.sm),
              child: Text(
                surahModel.revelationType.getRevelationType(
                  languageCode: languageCode,
                ),

                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            const SizedBox(width: AppValues.md),
            Text(
              AppLocalizations.of(context)!.ayah(surahModel.ayahs.length),
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
        trailing: Container(
          height: 32.h,
          width: 32.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          child: Text(
            surahModel.number.toString(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
