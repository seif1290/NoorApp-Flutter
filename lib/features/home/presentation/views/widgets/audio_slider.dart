import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/core/ui/ui_helpers/ui_helper_functions.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';

class AudioSlider extends StatefulWidget {
  const AudioSlider({super.key, required this.surahName});
  final String surahName;
  @override
  State<AudioSlider> createState() => _AudioSliderState();
}

class _AudioSliderState extends State<AudioSlider> {
  late AudioPlayerCubit _audioPlayerCubit;

  @override
  void initState() {
    super.initState();
    _audioPlayerCubit = context.read<AudioPlayerCubit>();
  }

  double lastPosition = 0.0;
  double lastDuration = 1.0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
      buildWhen: (previous, current) => current.maybeMap(
        audioProgressUpdated: (_) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        Duration currentPosition = Duration(seconds: lastPosition.toInt());
        Duration currentDuration = Duration(seconds: lastDuration.toInt());
        state.maybeMap(
          audioProgressUpdated: (state) {
            lastPosition = state.position.inSeconds.toDouble();
            lastDuration = state.duration.inSeconds.toDouble();
            currentPosition = state.position;
            currentDuration = state.duration;
          },
          orElse: () {},
        );
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  HelperFunctions.formatDuration(duration: currentPosition),
                  style: AppTextStyles.font12_16RegularYellow(
                    context,
                  ).copyWith(color: AppColors.lightGrey),
                ),
                Text(
                  widget.surahName,
                  style: AppTextStyles.font12_16RegularYellow(
                    context,
                  ).copyWith(color: AppColors.lightGrey),
                ),
                Text(
                  HelperFunctions.formatDuration(duration: currentDuration),
                  style: AppTextStyles.font12_16RegularYellow(
                    context,
                  ).copyWith(color: AppColors.lightGrey),
                ),
              ],
            ),
            const Gap(8),
            Slider.adaptive(
              min: 0.0,
              max: lastDuration,
              value: lastPosition,
              onChanged: (value) {
                _audioPlayerCubit.seek(
                  position: Duration(seconds: value.toInt()),
                );
                lastPosition = value;
              },
            ),
          ],
        );
      },
    );
  }
}
