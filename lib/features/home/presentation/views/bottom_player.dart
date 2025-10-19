import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/localization/l10n/app_localizations.dart';
import 'package:noor/core/utils/constants/ui_constants/app_components.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/view_models/surah_details_cubit/surah_details_cubit.dart';
import 'package:noor/features/home/presentation/views/audio_slider.dart';

class BottomPlayer extends StatelessWidget {
  const BottomPlayer({
    super.key,
    required this.surahName,
    required this.reciter,
  });
  final String surahName;
  final String reciter;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AudioSlider(surahName: surahName),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    context.read<SurahDetailsCubit>().getNextSurah();
                  },
                  icon: Icon(
                    Icons.skip_next_outlined,
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                ),

                InkWell(
                  onTap: () async {
                    await context.read<AudioPlayerCubit>().playOrPause();
                  },
                  child: Container(
                    padding: EdgeInsets.all(14.0),
                    margin: EdgeInsets.all(14.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primaryContainer,
                    ),
                    child: BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
                      buildWhen: (previous, current) =>
                          current is AudioPlaying || current is AudioPaused,
                      builder: (context, state) {
                        return Icon(
                          state is AudioPlaying
                              ? Icons.pause_outlined
                              : Icons.play_arrow_outlined,

                          color: Theme.of(context).colorScheme.onPrimary,
                        );
                      },
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    await context.read<SurahDetailsCubit>().getPreviousSurah();
                  },
                  icon: Icon(
                    Icons.skip_previous_outlined,
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                ),
              ],
            ),
            Text(
              AppLocalizations.of(context)?.localeName == 'ar'
                  ? AppComponents.reciterNameToArabic(reciterName: reciter)
                  : reciter,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
