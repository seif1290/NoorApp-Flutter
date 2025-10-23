import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/helper_functions/num_to_arabic.dart';
import 'package:noor/core/helper_functions/show_snack_bar.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/core/utils/app_components.dart';
import 'package:noor/core/utils/app_values.dart';
import 'package:noor/core/utils/snack_bar_state.dart';
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

  Future<void> _getNextSurah() async {
    await _surahDetailsCubit.getNextSurah();
  }

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context)?.localeName;
    return BlocListener<AudioPlayerCubit, AudioPlayerState>(
      listener: (context, state) {
        if (state is AudioFinished) {
          _getNextSurah();
        }
      },
      child: BlocConsumer<SurahDetailsCubit, SurahDetailsState>(
        listener: (context, state) {
          state.whenOrNull(
            getSurahSuccess: (surah, surahNumber) async {
              await context.read<AudioPlayerCubit>().loadSurah(
                surahUrl: surah.audio.originalUrl,
                surahNumber: surahNumber,
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
                getSurahFailed: (failure) {
                  showSnackBar(
                    context,
                    snackMessage: localeName == 'ar'
                        ? failure.arMsg
                        : failure.enMsg,
                    snackBarState: SnackBarState.error,
                  );
                  return null;
                },
                getSurahSuccess: (surah, surahNumber) {
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
                        top: AppValues.padding16.h,
                        right: AppValues.padding8.w,
                        left: AppValues.padding8.w,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: AppComponents.screenHeight(context) * 0.1,
                            ),
                            Center(
                              child: Text(
                                localeName == 'ar'
                                    ? '${surah.arabic1[0]}\uFD3F${numToArabic(number: 1)}\uFD3E'
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
