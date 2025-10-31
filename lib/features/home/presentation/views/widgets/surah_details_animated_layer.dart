import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/views/surah_details_view.dart';

class SurahDetailsAnimatedLayer extends StatelessWidget {
  const SurahDetailsAnimatedLayer({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    final audioPlayerCubit = context.read<AudioPlayerCubit>();

    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => current.maybeMap(
        surahDetailsOpened: (_) => true,
        surahDetailsClosed: (_) => true,
        getSurahSuccess: (_) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        final bool isOpen = state.maybeWhen(
          surahDetailsOpened: () => true,
          getSurahSuccess: (_, _) => true,
          orElse: () => false,
        );
        return AnimatedSlide(
          offset: isOpen ? Offset.zero : const Offset(0, 1),
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOutCirc,
          child: homeCubit.currentSurah == null
              ? const SizedBox.shrink()
              : SurahDetailsView(
                  surah: homeCubit.currentSurah!,
                  onPlayButtonTap: () {
                    audioPlayerCubit.playOrPause(
                      surahNumber: homeCubit.currentSurahNumber!,
                    );
                  },
                  onGetNextSurah: () {
                    homeCubit.getNextSurah();
                  },
                  onGetPreviousSurah: () {
                    homeCubit.getPreviousSurah();
                  },
                  onCloseSurahDetails: () {
                    homeCubit.closeSurahDetails();
                  },
                ),
        );
      },
    );
  }
}
