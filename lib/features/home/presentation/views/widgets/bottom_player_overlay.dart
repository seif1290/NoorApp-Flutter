import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/utils/app_values.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/views/widgets/bottom_player.dart';

class BottomPlayerOverlay extends StatelessWidget {
  const BottomPlayerOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit homeCubit = context.read<HomeCubit>();
    final AudioPlayerCubit audioPlayerCubit = context.read<AudioPlayerCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current.maybeMap(getSurahSuccess: (_) => true, orElse: () => false),
      builder: (context, state) {
        return state.maybeMap(
          getSurahSuccess: (state) {
            return Positioned(
              bottom: AppValues.padding32,
              child: BottomPlayer(
                surah: state.surah,
                surahNumber: state.surahNumber,
                onPlayButtonTap: () async {
                  await audioPlayerCubit.playOrPause(
                    surahNumber: state.surahNumber,
                  );
                },
                onTap: () {
                  homeCubit.openSurahDetails();
                },
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
