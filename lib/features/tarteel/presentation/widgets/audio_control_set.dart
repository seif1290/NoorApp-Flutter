import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/features/tarteel/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/tarteel/presentation/widgets/audio_slider.dart';

class AudioControlSet extends StatelessWidget {
  const AudioControlSet({
    super.key,
    this.onPlayButtonTap,
    this.onGetNextSurah,
    this.onGetPreviousSurah,
    this.onFastForward,
    this.onRewind,
  });
  final VoidCallback? onPlayButtonTap;
  final VoidCallback? onGetNextSurah;
  final VoidCallback? onGetPreviousSurah;
  final VoidCallback? onFastForward;
  final VoidCallback? onRewind;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const AudioSlider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          spacing: 8.w,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentGeometry.centerStart,
                child: IconButton(
                  onPressed: onGetNextSurah,
                  icon: Icon(
                    Icons.skip_next_outlined,
                    color: Theme.of(context).primaryColor,
                    size: 32,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: onFastForward,
              icon: Icon(
                Icons.forward_10_outlined,
                color: Theme.of(context).primaryColor,
                size: 32,
              ),
            ),
            InkWell(
              onTap: onPlayButtonTap,
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
                child: BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      audioPlaying: (_) => const Icon(
                        Icons.pause,
                        color: AppColors.white,
                        size: 32,
                      ),
                      orElse: () => const Icon(
                        Icons.play_arrow,
                        color: AppColors.white,
                        size: 32,
                      ),
                    );
                  },
                ),
              ),
            ),

            IconButton(
              onPressed: onRewind,
              icon: Icon(
                Icons.replay_10_outlined,
                color: Theme.of(context).primaryColor,
                size: 32,
              ),
            ),
            Expanded(
              child: Align(
                alignment: AlignmentGeometry.centerEnd,
                child: IconButton(
                  onPressed: onGetPreviousSurah,
                  icon: Icon(
                    Icons.skip_previous_outlined,
                    color: Theme.of(context).primaryColor,
                    size: 32,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
