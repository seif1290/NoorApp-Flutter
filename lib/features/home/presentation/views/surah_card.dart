import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/localization/l10n/app_localizations.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';
import 'package:noor/features/home/data/models/revelation_place.dart';
import 'package:noor/features/home/data/models/surah_model.dart';

class SurahCard extends StatelessWidget {
  const SurahCard({
    super.key,
    required this.surahModel,
    this.onCardTab,
    required this.surahNumber,
  });
  final SurahModel surahModel;
  final int surahNumber;
  final VoidCallback? onCardTab;
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
          languageCode == 'ar'
              ? surahModel.surahNameArabicLong
              : surahModel.surahName,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        subtitle: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppValues.sm),
              child: Text(
                surahModel.revelationPlace.getRevelationPlace(
                  languageCode: languageCode,
                ),

                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
            const SizedBox(width: AppValues.md),
            Text(
              AppLocalizations.of(context)!.ayah(surahModel.totalAyah),
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
            surahNumber.toString(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        onTap: onCardTab,
      ),
    );
  }
}
