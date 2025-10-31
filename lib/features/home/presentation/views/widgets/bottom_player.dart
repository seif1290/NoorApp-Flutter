import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/helper_functions/reciter_name_to_arabic.dart';
import 'package:noor/core/theme/styles/app_colors.dart';
import 'package:noor/core/theme/styles/app_text_styles.dart';
import 'package:noor/core/utils/app_values.dart';
import 'package:noor/features/home/data/models/surah_model_with_audio/surah_model_with_audio.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';

class BottomPlayer extends StatefulWidget {
  const BottomPlayer({
    super.key,
    required this.surah,
    required this.surahNumber,
    this.onPlayButtonTap,
    this.onTap,
  });
  final SurahModelWithAudio surah;
  final int surahNumber;
  final VoidCallback? onPlayButtonTap;
  final VoidCallback? onTap;
  @override
  State<BottomPlayer> createState() => _BottomPlayerState();
}

class _BottomPlayerState extends State<BottomPlayer>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context)?.localeName;
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Card(
          color: AppColors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                localeName == 'ar'
                    ? widget.surah.surahNameArabicLong
                    : widget.surah.surahName,
                style: AppTextStyles.title16,
              ),
              subtitle: Text(
                localeName == 'ar'
                    ? reciterNameToArabic(
                        reciterName: widget.surah.audio.reciter,
                      )
                    : widget.surah.audio.reciter,
                style: AppTextStyles.title10.copyWith(color: AppColors.black),
              ),
              trailing: InkWell(
                onTap: widget.onPlayButtonTap,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(AppValues.padding4),
                    child: BlocListener<AudioPlayerCubit, AudioPlayerState>(
                      listenWhen: (previous, current) =>
                          current is AudioPlaying || current is AudioPaused,
                      listener: (context, state) {
                        if (state is AudioPlaying) {
                          _animationController.forward();
                        } else {
                          _animationController.reverse();
                        }
                      },
                      child: AnimatedIcon(
                        icon: AnimatedIcons.play_pause,
                        color: AppColors.white,
                        progress: _animationController,
                      ),
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
