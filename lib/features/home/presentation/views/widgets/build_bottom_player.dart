import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/views/widgets/bottom_player.dart';
import 'package:noor/features/home/presentation/views/widgets/show_surah_details_bottom_sheet.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class BuildBottomPlayer extends StatelessWidget {
  const BuildBottomPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
      buildWhen: (previous, current) =>
          current.maybeWhen(getSurahSuccess: (_) => true, orElse: () => false),
      builder: (context, state) {
        return state.maybeMap(
          getSurahSuccess: (state) {
            final reciterName = AppLocalizations.of(context)?.localeName == 'ar'
                ? context.read<AudioPlayerCubit>().currentReciter?.nameAr
                : context.read<AudioPlayerCubit>().currentReciter?.nameEn;
            return BottomPlayer(
              surah: state.surah,
              reciterName: reciterName ?? '',
              onPlayButtonTap: () async {
                await context.read<AudioPlayerCubit>().playOrPause();
              },
              onTap: () async {
                await showSurahDetailsBottomSheet(context);
              },
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
