import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:noor/features/tarteel/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/tarteel/presentation/view_models/tarteel_bloc/tarteel_bloc.dart';
import 'package:noor/features/tarteel/presentation/widgets/quran_list_view.dart';
import 'package:noor/features/tarteel/presentation/widgets/show_surah_details_bottom_sheet.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class TarteelViewBody extends StatelessWidget {
  const TarteelViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final AudioPlayerCubit audioPlayerCubit = context.read<AudioPlayerCubit>();
    final localeName = AppLocalizations.of(context)?.localeName;
    return BlocBuilder<TarteelBloc, TarteelState>(
      builder: (context, state) {
        return state.maybeMap(
          getQuranLoading: (_) {
            return const Center(child: CircularProgressIndicator());
          },
          getQuranSuccess: (state) {
            return Column(
              children: [
                const Gap(12),

                Expanded(
                  child: QuranListView(
                    key: const PageStorageKey<String>('home'),
                    surahs: state.surahs,
                    onCardTab: (surahMetadata) async {
                      if (audioPlayerCubit.currentSurah?.id !=
                          surahMetadata.id) {
                        await audioPlayerCubit.getSurah(
                          surahId: surahMetadata.id,
                        );
                      } else {
                        await showSurahDetailsBottomSheet(context);
                      }
                    },
                    onPlayButtonTap: (surahMetadata) async {
                      if (audioPlayerCubit.currentSurah?.id !=
                          surahMetadata.id) {
                        await audioPlayerCubit.getSurah(
                          surahId: surahMetadata.id,
                        );
                      } else {
                        await audioPlayerCubit.playOrPause();
                      }
                    },
                  ),
                ),
              ],
            );
          },
          getQuranfailed: (state) {
            return Center(
              child: Text(
                localeName == 'ar' ? state.failure.arMsg : state.failure.enMsg,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
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
