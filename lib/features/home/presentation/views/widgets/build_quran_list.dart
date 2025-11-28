import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/views/widgets/quran_list_view.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class BuildQuranList extends StatelessWidget {
  const BuildQuranList({super.key});

  @override
  Widget build(BuildContext context) {
    final audioPlayerCubit = context.read<AudioPlayerCubit>();

    final localeName = AppLocalizations.of(context)?.localeName;
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => current.maybeMap(
        getQuranLoading: (_) => true,
        getQuranSuccess: (_) => true,
        getQuranfailed: (_) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return state.maybeMap(
          getQuranLoading: (_) {
            return const Center(child: CircularProgressIndicator());
          },
          getQuranSuccess: (state) {
            return QuranListView(
              key: const PageStorageKey<String>('home'),
              surahs: state.surahs,
              onCardTab: (surahNumber) async {
                if (audioPlayerCubit.currentSurahNumber != surahNumber) {
                  await audioPlayerCubit.loadSurah(surahNumber: surahNumber);
                } else {
                  await audioPlayerCubit.playOrPause();
                }
              },
              onPlayButtonTap: (surahNumber) async {
                if (audioPlayerCubit.currentSurahNumber != surahNumber) {
                  await audioPlayerCubit.loadSurah(surahNumber: surahNumber);
                } else {
                  await audioPlayerCubit.playOrPause();
                }
              },
            );
          },
          getQuranfailed: (state) {
            return Center(
              child: Text(
                localeName == 'ar' ? state.failure.arMsg : state.failure.enMsg,
                textAlign: TextAlign.center,
                style: AppTextStyles.font16_20GreenSemiBold(context),
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
