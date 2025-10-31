import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';

class AudioSlider extends StatefulWidget {
  const AudioSlider({super.key, required this.surahName});
  final String surahName;
  @override
  State<AudioSlider> createState() => _AudioSliderState();
}

class _AudioSliderState extends State<AudioSlider> {
  late AudioPlayerCubit _audioPlayerCubit;

  String _formatTime({required Duration duration}) {
    final hours = duration.inHours.remainder(60).toString().padLeft(2, '0');
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return hours == '00' ? '$minutes:$seconds' : '$hours:$minutes:$seconds';
  }

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
      buildWhen: (previous, current) => current is AudioProgressUpdated,
      builder: (context, state) {
        Duration currentPosition = Duration(seconds: lastPosition.toInt());
        Duration currentDuration = Duration(seconds: lastDuration.toInt());
        if (state is AudioProgressUpdated) {
          lastPosition = state.position.inSeconds.toDouble();
          lastDuration = state.duration.inSeconds.toDouble();
          currentPosition = state.position;
          currentDuration = state.duration;
        }
        return Column(
          children: [
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _formatTime(duration: currentPosition),
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  widget.surahName,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                Text(
                  _formatTime(duration: currentDuration),
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
