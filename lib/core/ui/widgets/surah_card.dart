import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/ui/ui_helpers/ui_helper_functions.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/features/tarteel/data/models/type.dart';
import 'package:noor/features/tarteel/data/models/surah_metadata_model/surah_metadata_model.dart';

class SurahCard extends StatelessWidget {
  const SurahCard({
    super.key,
    required this.surah,
    this.onCardTab,
    this.isPlaying = false,
  });
  final SurahMetadataModel surah;
  final bool isPlaying;
  final VoidCallback? onCardTab;

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context)?.localeName;
    return SizedBox(
      child: Card(
        margin: EdgeInsets.zero,
        child: ListTile(
          onTap: onCardTab,
          leading: Container(
            height: 32.h,
            width: 32.h,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary100,
            ),
            child: Text(
              localeName == 'ar'
                  ? HelperFunctions.numToArabic(number: surah.id)
                  : surah.id.toString(),
              style: AppTextStyles.subtitle1().copyWith(
                color: AppColors.primary500,
              ),
            ),
          ),
          title: Text(
            localeName == 'ar' ? 'سورة ${surah.name}' : surah.transliteration,
            style: Theme.of(context).textTheme.titleLarge,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          subtitle: Row(
            spacing: 4,
            children: [
              Text(
                AppLocalizations.of(context)!.ayah(surah.totalVerses),
                style: Theme.of(context).textTheme.labelSmall,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              const Text('•'),
              Expanded(
                child: Text(
                  surah.type.getRevelationPlace(locleName: localeName),
                  style: Theme.of(context).textTheme.labelSmall,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.download_for_offline_outlined,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
    );
  }
}
