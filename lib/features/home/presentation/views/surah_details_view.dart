import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/helper_functions/num_to_arabic.dart';
import 'package:noor/core/helper_functions/reciter_name_to_arabic.dart';
import 'package:noor/core/theme/styles/app_colors.dart';
import 'package:noor/core/theme/styles/app_text_styles.dart';
import 'package:noor/core/utils/app_values.dart';
import 'package:noor/features/home/data/models/surah_model_with_audio/surah_model_with_audio.dart';
import 'package:noor/features/home/presentation/views/widgets/audio_slider.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';

class SurahDetailsView extends StatefulWidget {
  final SurahModelWithAudio surah;
  final VoidCallback? onPlayButtonTap;
  final VoidCallback? onGetNextSurah;
  final VoidCallback? onGetPreviousSurah;
  final VoidCallback? onCloseSurahDetails;
  const SurahDetailsView({
    super.key,
    required this.surah,
    this.onPlayButtonTap,
    this.onGetNextSurah,
    this.onGetPreviousSurah,
    this.onCloseSurahDetails,
  });

  @override
  State<SurahDetailsView> createState() => _SurahDetailsViewState();
}

class _SurahDetailsViewState extends State<SurahDetailsView>
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: widget.onCloseSurahDetails,
          icon: const Icon(Icons.arrow_downward),
        ),
        title: Text(
          localeName == 'ar'
              ? widget.surah.surahNameArabicLong
              : widget.surah.surahName,
          style: AppTextStyles.heading18,
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          vertical: AppValues.padding16.h,
          horizontal: AppValues.padding8.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                localeName == 'ar'
                    ? '${widget.surah.arabic1[0]}\uFD3F${numToArabic(number: 1)}\uFD3E'
                    : '1. ${widget.surah.english[0]}',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.copyWith(height: 1.5.h),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            AudioSlider(surahName: widget.surah.surahName),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: widget.onGetNextSurah,
                  icon: Icon(
                    Icons.skip_next_outlined,
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                ),

                InkWell(
                  onTap: widget.onPlayButtonTap,
                  child: Container(
                    padding: const EdgeInsets.all(14.0),
                    margin: const EdgeInsets.all(14.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
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
                IconButton(
                  onPressed: widget.onGetPreviousSurah,
                  icon: Icon(
                    Icons.skip_previous_outlined,
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                ),
              ],
            ),
            Text(
              AppLocalizations.of(context)?.localeName == 'ar'
                  ? reciterNameToArabic(reciterName: widget.surah.audio.reciter)
                  : widget.surah.audio.reciter,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
