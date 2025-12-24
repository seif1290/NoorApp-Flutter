import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/view_models/home_bloc/home_bloc.dart';
import 'package:noor/features/home/presentation/views/widgets/quran_list_view.dart';
import 'package:noor/features/home/presentation/views/widgets/show_surah_details_bottom_sheet.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final AudioPlayerCubit audioPlayerCubit = context.read<AudioPlayerCubit>();
    final localeName = AppLocalizations.of(context)?.localeName;
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return state.maybeMap(
          getQuranLoading: (_) {
            return const Center(child: CircularProgressIndicator());
          },
          getQuranSuccess: (state) {
            final HomeBloc homeBloc = context.read<HomeBloc>();
            return Column(
              children: [
                SearchBar(
                  leading: const Icon(Icons.search, color: AppColors.lightGrey),
                  controller: homeBloc.searchController,
                  hintText: AppLocalizations.of(context)!.searhForSurah,
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  trailing: [
                    if (homeBloc.searchController.text.isNotEmpty)
                      IconButton(
                        onPressed: () {
                          homeBloc.add(const ClearSearch());
                        },
                        icon: const Icon(
                          Icons.clear,
                          color: AppColors.lightGrey,
                        ),
                      ),
                  ],
                  onChanged: (_) {
                    homeBloc.add(const Search());
                  },
                ),
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
                        if (!context.mounted) return;
                        await showSurahDetailsBottomSheet(context);
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
