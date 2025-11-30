import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/features/home/data/models/type.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/views/widgets/audio_control_set.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class SurahDetailsView extends StatelessWidget {
  final VoidCallback? onCloseSurahDetails;
  const SurahDetailsView({super.key, this.onCloseSurahDetails});

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context)?.localeName;
    final audioPlayerCubit = context.read<AudioPlayerCubit>();

    return BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
      buildWhen: (previous, current) => current.maybeWhen(
        getSurahSuccess: (_) => true,
        getSurahLoading: () => true,
        failed: (_) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return state.maybeWhen(
          getSurahSuccess: (surah) {
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
                          ? 'سورة ${surah.name}'
                          : surah.transliteration,
                      style: AppTextStyles.font18_22GreenRegular(context),
                    ),
                    localeName == 'ar'
                        ? Text(
                            '${surah.type.getRevelationPlace()} • ${surah.totalVerses} آية',
                            style: AppTextStyles.font12_16RegularYellow(
                              context,
                            ).copyWith(color: AppColors.lightGrey),
                          )
                        : Text(
                            '${surah.type.getRevelationPlace(locleName: 'en')} • ${surah.totalVerses} verses',
                            style: AppTextStyles.font12_16RegularYellow(
                              context,
                            ).copyWith(color: AppColors.lightGrey),
                          ),
                  ],
                ),
              ),
              body: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AppValues.padding16.h,
                  horizontal: AppValues.padding8.w,
                ),
                child: AudioControlSet(
                  surahName: localeName == 'ar'
                      ? 'سورة ${surah.name}'
                      : surah.transliteration,
                  onPlayButtonTap: () async {
                    await audioPlayerCubit.playOrPause();
                  },
                  onGetNextSurah: () async {
                    await audioPlayerCubit.getNextSurah();
                  },
                  onGetPreviousSurah: () async {
                    await audioPlayerCubit.getPreviousSurah();
                  },
                ),
              ),
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
