import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/ui/ui_helpers/ui_helper_functions.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/features/home/data/models/type.dart';
import 'package:noor/features/home/data/models/surah_metadata_model/surah_metadata_model.dart';

class SurahCard extends StatelessWidget {
  const SurahCard({
    super.key,
    required this.surah,
    required this.index,
    this.onCardTab,
    this.onPlayButtonTap,
  });
  final SurahMetadataModel surah;
  final int index;
  final VoidCallback? onCardTab;
  final VoidCallback? onPlayButtonTap;

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context)?.localeName;
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
            localeName == 'ar'
                ? HelperFunctions.numToArabic(number: surah.id)
                : surah.id.toString(),
            style: AppTextStyles.font20_24GreenRegular(context),
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: Text(
            localeName == 'ar' ? surah.name : surah.transliteration,
            style: AppTextStyles.font16_20GreenSemiBold(context),
          ),
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.ayah(surah.totalVerses),
              style: AppTextStyles.font12_16RegularYellow(
                context,
              ).copyWith(color: AppColors.lightGrey),
            ),
            AppValues.gap12,
            Container(
              decoration: BoxDecoration(
                color: const Color(0X1ACDA434),
                borderRadius: BorderRadius.circular(AppValues.padding8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 2.h),
              child: Text(
                surah.type.getRevelationPlace(locleName: localeName),
                style: AppTextStyles.font12_16RegularYellow(
                  context,
                ).copyWith(color: AppColors.secondary),
              ),
            ),
          ],
        ),
        trailing: InkWell(
          onTap: onPlayButtonTap,
          child: Container(
            height: 40.h,
            width: 40.w,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.offWhite,
            ),
            child: BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
              buildWhen: (previous, current) =>
                  current is AudioPlaying || current is AudioPaused,

              builder: (context, state) {
                if (state is AudioPlaying && state.surahNumber == index + 1) {
                  return const Icon(Icons.pause, color: AppColors.secondary);
                } else {
                  return const Icon(
                    Icons.play_arrow,
                    color: AppColors.secondary,
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
