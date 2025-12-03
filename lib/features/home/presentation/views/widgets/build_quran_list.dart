import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/theme/app_colors.dart';
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
      builder: (context, state) {
        return state.maybeMap(
          getQuranLoading: (_) {
            return const Center(child: CircularProgressIndicator());
          },
          getQuranSuccess: (state) {
            return QuranListView(
              key: const PageStorageKey<String>('home'),
              surahs: state.surahs,
              onCardTab: (surahMetadata) async {
                if (audioPlayerCubit.currentSurahNumber != surahMetadata.id) {
                  await audioPlayerCubit.getSurah(surahId: surahMetadata.id);
                  audioPlayerCubit.openSurahDetails();
                } else {
                  audioPlayerCubit.openSurahDetails();
                }
              },
              onPlayButtonTap: (surahMetadata) async {
                if (audioPlayerCubit.currentSurahNumber != surahMetadata.id) {
                  await audioPlayerCubit.getSurah(surahId: surahMetadata.id);
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
                style: AppTextStyles.font16_20SemiBold(
                  context,
                ).copyWith(color: AppColors.primary),
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
