import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/helper_functions/num_to_arabic.dart';
import 'package:noor/core/theme/styles/app_colors.dart';
import 'package:noor/core/theme/styles/app_text_styles.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/core/utils/app_values.dart';
import 'package:noor/features/home/data/models/revelation_place.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';

class SurahCard extends StatelessWidget {
  const SurahCard({
    super.key,
    required this.surahModel,
    this.onCardTab,
    required this.surahNumber,
    required this.trailingIcon,
  });
  final SurahModel surahModel;
  final int surahNumber;
  final VoidCallback? onCardTab;
  final Widget trailingIcon;

  @override
  Widget build(BuildContext context) {
    final languageCode = Localizations.localeOf(context).languageCode;
    log('build surah card');
    return Card(
      child: ListTile(
        onTap: onCardTab,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 21,
          horizontal: AppValues.padding16,
        ),
        leading: Container(
          height: 40.h,
          width: 40.w,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightBlack,
          ),
          child: Text(
            languageCode == 'ar'
                ? numToArabic(number: surahNumber)
                : surahNumber.toString(),
            style: AppTextStyles.heading20,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: Text(
            languageCode == 'ar'
                ? surahModel.surahNameArabicLong
                : surahModel.surahName,
            style: AppTextStyles.title16,
          ),
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.ayah(surahModel.totalAyah),
              style: AppTextStyles.title12,
            ),
            AppValues.gap12,
            Container(
              decoration: BoxDecoration(
                color: const Color(0X1ACDA434),
                borderRadius: BorderRadius.circular(AppValues.padding8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 2.h),
              child: Text(
                surahModel.revelationPlace.getRevelationPlace(
                  languageCode: languageCode,
                ),
                style: AppTextStyles.title12.copyWith(
                  color: AppColors.secondary,
                ),
              ),
            ),
          ],
        ),
        trailing: InkWell(
          onTap: () {},
          child: Container(
            height: 40.h,
            width: 40.w,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.offWhite,
            ),
            child: trailingIcon,
          ),
        ),
      ),
    );
  }
}
