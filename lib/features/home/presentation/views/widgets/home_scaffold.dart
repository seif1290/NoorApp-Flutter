import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:noor/core/utils/app_values.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/views/widgets/bottom_player_overlay.dart';
import 'package:noor/features/home/presentation/views/widgets/home_body.dart';
import 'package:noor/features/home/presentation/views/widgets/locale_picker.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/localization/locale_provider.dart';
import 'package:provider/provider.dart';

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<HomeCubit>();
    final audioPlayerCubit = context.read<AudioPlayerCubit>();

    return MultiBlocListener(
      listeners: [
        BlocListener<AudioPlayerCubit, AudioPlayerState>(
          listener: (context, state) {
            if (state is AudioFinished) {
              homeCubit.getNextSurah();
            }
          },
        ),
        BlocListener<HomeCubit, HomeState>(
          listener: (context, state) {
            state.maybeWhen(
              getSurahSuccess: (surah, surahNumber) async {
                await audioPlayerCubit.loadSurah(
                  surahUrl: surah.audio.originalUrl,
                  surahNumber: surahNumber,
                );
              },
              orElse: () => null,
            );
          },
        ),
      ],
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              const Gap(AppValues.padding32),
              LocalePicker(provider: Provider.of<LocaleProvider>(context)),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.homeTitle),
          actions: [
            IconButton(
              onPressed: () {
                //TODO: Search Feature
              },
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: Stack(
          children: [
            HomeBody(
              onCardTab: (surahNumber) async {
                if (homeCubit.currentSurahNumber != surahNumber) {
                  await homeCubit.getSurah(surahNumber: surahNumber);
                }
                homeCubit.openSurahDetails();
              },
              onPlayButtonTap: (surahNumber) async {
                if (homeCubit.currentSurahNumber != surahNumber) {
                  await homeCubit.getSurah(surahNumber: surahNumber);
                } else {
                  await audioPlayerCubit.playOrPause(surahNumber: surahNumber);
                }
              },
            ),
            const BottomPlayerOverlay(),
          ],
        ),
      ),
    );
  }
}
