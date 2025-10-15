import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/localization/l10n/app_localizations.dart';
import 'package:noor/core/utils/constants/ui_constants/app_components.dart';
import 'package:noor/core/utils/constants/ui_constants/app_strings.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';
import 'package:noor/core/utils/constants/ui_constants/snack_bar_state.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/view_models/surah_details_cubit/surah_details_cubit.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class SurahDetailsView extends StatefulWidget {
  const SurahDetailsView({super.key, required this.surahNumber});
  final int surahNumber;
  @override
  State<SurahDetailsView> createState() => _SurahDetailsViewState();
}

class _SurahDetailsViewState extends State<SurahDetailsView> {
  late final SurahDetailsCubit _surahDetailsCubit;
  bool showBasmala = false;
  @override
  void initState() {
    super.initState();
    _surahDetailsCubit = context.read<SurahDetailsCubit>();

    _getSurah(surahNumber: widget.surahNumber);
  }

  Future<void> _getSurah({required int surahNumber}) async {
    await _surahDetailsCubit.getSurah(surahNumber: surahNumber);
  }

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context)?.localeName;
    return BlocListener<AudioPlayerCubit, AudioPlayerState>(
      listener: (context, state) {
        if (state is AudioFinished) {
          _getSurah(
            surahNumber:
                _surahDetailsCubit.nextSurahNumber ?? widget.surahNumber,
          );
        }
      },
      child: BlocConsumer<SurahDetailsCubit, SurahDetailsState>(
        listener: (context, state) {
          state.whenOrNull(
            getSurahSuccess: (surah) async {
              await context.read<AudioPlayerCubit>().loadSurah(
                surahUrl: surah.audio.originalUrl,
              );
            },
          );
        },
        builder: (context, state) {
          return state.whenOrNull(
                getSurahLoading: () {
                  return Shimmer(
                    child: ColoredBox(
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  );
                },
                getSurahFailed: (errMsg) {
                  AppComponents.showSnackBar(
                    context,
                    snackMessage: errMsg,
                    snackBarState: SnackBarState.error,
                  );
                  return null;
                },
                getSurahSuccess: (surah) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(
                        localeName == 'ar'
                            ? surah.surahNameArabicLong
                            : surah.surahName,
                      ),
                    ),

                    body: Padding(
                      padding: EdgeInsetsGeometry.only(
                        top: AppValues.md.h,
                        right: AppValues.sm.w,
                        left: AppValues.sm.w,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            if (showBasmala)
                              Text(
                                AppStrings.basmala,
                                style: Theme.of(
                                  context,
                                ).textTheme.titleLarge!.copyWith(fontSize: 36),
                                textAlign: TextAlign.center,
                              ),
                            SizedBox(
                              height: AppComponents.screenHeight(context) * 0.1,
                            ),
                            Center(
                              child: Text(
                                localeName == 'ar'
                                    ? '${surah.arabic1[0]}\uFD3F${AppComponents.numToArabic(number: 1)}\uFD3E'
                                    : '1. ${surah.english[0]}',
                                style: Theme.of(
                                  context,
                                ).textTheme.titleLarge!.copyWith(height: 1.5.h),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ) ??
              const SizedBox.shrink();
        },
      ),
    );
  }
}
