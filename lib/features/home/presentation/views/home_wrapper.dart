import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/theme/styles/app_colors.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/view_models/surah_details_cubit/surah_details_cubit.dart';
import 'package:noor/features/home/presentation/views/bottom_player.dart';
import 'package:noor/features/home/presentation/views/error_view.dart';
import 'package:noor/features/home/presentation/views/home_view.dart';
import 'package:noor/features/home/presentation/views/surah_details_view.dart';

import 'package:shimmer_animation/shimmer_animation.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({super.key});

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  late final HomeCubit _homeCubit;

  @override
  void initState() {
    super.initState();
    _homeCubit = context.read<HomeCubit>();
    _getQuran();
  }

  Future<void> _getQuran() async {
    await _homeCubit.getQuran();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return Shimmer(child: const ColoredBox(color: AppColors.primary));
          },
          getQuranLoading: () {
            return Shimmer(child: const ColoredBox(color: AppColors.primary));
          },
          getQuranSuccess: (surahs) {
            return Column(
              children: [
                Expanded(
                  child: PopScope(
                    canPop: false,
                    child: Navigator(
                      onGenerateRoute: (_) {
                        return MaterialPageRoute(
                          builder: (context) {
                            return HomeView(
                              surahs: surahs,
                              onSurahCardTab: (surahNumber) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return SurahDetailsView(
                                        surahNumber: surahNumber,
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),

                BlocBuilder<SurahDetailsCubit, SurahDetailsState>(
                  builder: (context, state) {
                    return state.whenOrNull(
                          getSurahSuccess: (surah, surahNumber) {
                            return SizedBox(
                              height: 200.h,
                              width: double.infinity,
                              child: Material(
                                child: BottomPlayer(
                                  surahName:
                                      AppLocalizations.of(
                                            context,
                                          )?.localeName ==
                                          'ar'
                                      ? surah.surahNameArabicLong
                                      : surah.surahName,
                                  reciter: surah.audio.reciter,
                                  surahNumber: surahNumber,
                                ),
                              ),
                            );
                          },
                        ) ??
                        const SizedBox.shrink();
                  },
                ),
              ],
            );
          },
          getQuranfailed: (failure) {
            return ErrorView(arMsg: failure.arMsg, enMsg: failure.enMsg);
          },
        );
      },
    );
  }
}
