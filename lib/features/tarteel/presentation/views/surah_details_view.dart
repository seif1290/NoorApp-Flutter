import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/core/ui/ui_utils/app_images.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/features/tarteel/data/models/type.dart';
import 'package:noor/features/tarteel/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/tarteel/presentation/views/widgets/audio_control_set.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class SurahDetailsView extends StatelessWidget {
  final VoidCallback? onCloseSurahDetails;
  final AudioPlayerCubit audioPlayerCubit;
  const SurahDetailsView({
    super.key,
    this.onCloseSurahDetails,
    required this.audioPlayerCubit,
  });

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context)?.localeName;

    return BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
      buildWhen: (previous, current) =>
          current.maybeMap(orElse: () => false, getSurahSuccess: (_) => true),
      builder: (context, state) {
        final surah = context.read<AudioPlayerCubit>().currentSurah;
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: onCloseSurahDetails,
              icon: const Icon(Icons.arrow_downward),
            ),
            title: Column(
              children: [
                Text(
                  localeName == 'ar'
                      ? 'سورة ${surah?.name}'
                      : '${surah?.transliteration}',
                  style: AppTextStyles.font18_22GreenRegular(context),
                ),
                localeName == 'ar'
                    ? Text(
                        '${surah?.type.getRevelationPlace()} • ${surah?.totalVerses} آية',
                        style: AppTextStyles.font12_16RegularYellow(
                          context,
                        ).copyWith(color: AppColors.lightGrey),
                      )
                    : Text(
                        '${surah?.type.getRevelationPlace(locleName: 'en')} • ${surah?.totalVerses} verses',
                        style: AppTextStyles.font12_16RegularYellow(
                          context,
                        ).copyWith(color: AppColors.lightGrey),
                      ),
              ],
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: AppValues.padding16.h,
                    horizontal: AppValues.padding8.w,
                  ),
                  child: Image.asset(
                    AppImages.appLogo,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AppValues.padding16.h,
                  horizontal: AppValues.padding8.w,
                ),
                child: AudioControlSet(
                  surahName: localeName == 'ar'
                      ? 'سورة ${surah?.name}'
                      : '${surah?.transliteration}',
                  onPlayButtonTap: () async {
                    await audioPlayerCubit.playOrPause();
                  },
                  onGetNextSurah: () async {
                    await audioPlayerCubit.getNextSurah();
                  },
                  onGetPreviousSurah: () async {
                    await audioPlayerCubit.getPreviousSurah();
                  },
                  onFastForward: () async {
                    await audioPlayerCubit.fastForward();
                  },
                  onRewind: () async {
                    await audioPlayerCubit.rewind();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
