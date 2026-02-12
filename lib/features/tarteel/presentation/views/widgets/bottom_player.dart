import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/features/tarteel/data/models/surah_model/surah_model.dart';
import 'package:noor/features/tarteel/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class BottomPlayer extends StatelessWidget {
  const BottomPlayer({
    super.key,
    required this.surah,
    required this.reciterName,
    this.onPlayButtonTap,
    this.onTap,
  });
  final SurahModel surah;
  final String reciterName;
  final VoidCallback? onPlayButtonTap;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Card(
          color: AppColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                AppLocalizations.of(context)!.localeName == 'ar'
                    ? 'سورة ${surah.name}'
                    : surah.transliteration,
                style: AppTextStyles.font16_20SemiBold(
                  context,
                ).copyWith(color: AppColors.primary500),
              ),
              subtitle: Text(
                reciterName,
                style: AppTextStyles.font10_14RegularBlack(context),
              ),
              trailing: InkWell(
                onTap: onPlayButtonTap,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary500,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppValues.padding4),
                    child: BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          audioPlaying: (_) =>
                              const Icon(Icons.pause, color: AppColors.white),

                          orElse: () => const Icon(
                            Icons.play_arrow,
                            color: AppColors.white,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
