import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';
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
      child: Card(
        color: AppColors.neutral50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4.h),
          title: Text(
            AppLocalizations.of(context)!.localeName == 'ar'
                ? 'سورة ${surah.name}'
                : surah.transliteration,
            style: AppTextStyles.subtitle1().copyWith(
              color: AppColors.primary500,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          subtitle: Text(
            reciterName,
            style: AppTextStyles.overline(),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          trailing: InkWell(
            onTap: onPlayButtonTap,
            child: Container(
              width: 32,
              height: 32,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      audioPlaying: (_) => Icon(
                        Icons.pause,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                      orElse: () => Icon(
                        Icons.play_arrow,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
