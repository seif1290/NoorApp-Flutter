import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/core/ui/ui_utils/app_images.dart';
import 'package:noor/features/tarteel/data/models/type.dart';
import 'package:noor/features/tarteel/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/tarteel/presentation/widgets/audio_control_set.dart';
import 'package:noor/core/ui/widgets/custom_app_bar.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class SurahDetailsView extends StatefulWidget {
  final VoidCallback? onCloseSurahDetails;
  final AudioPlayerCubit audioPlayerCubit;
  const SurahDetailsView({
    super.key,
    this.onCloseSurahDetails,
    required this.audioPlayerCubit,
  });

  @override
  State<SurahDetailsView> createState() => _SurahDetailsViewState();
}

class _SurahDetailsViewState extends State<SurahDetailsView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context)?.localeName;
    final isSmallScreen = MediaQuery.sizeOf(context).height < 300;
    return BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
      buildWhen: (previous, current) =>
          current.maybeMap(orElse: () => false, getSurahSuccess: (_) => true),
      builder: (context, state) {
        final surah = context.read<AudioPlayerCubit>().currentSurah;
        return Scaffold(
          appBar: CustomAppBar(
            title: '',
            leading: IconButton(
              onPressed: widget.onCloseSurahDetails,
              icon: const Icon(Icons.arrow_downward),
            ),
            actions: const [],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!isSmallScreen) SizedBox(height: 98.h),
                  if (!isSmallScreen)
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.4,
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image.asset(
                          AppImages.mosqueImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  SizedBox(height: 48.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
                        buildWhen: (previous, current) => current.maybeWhen(
                          reciterLoaded: (_) => true,
                          orElse: () => false,
                        ),
                        builder: (context, state) {
                          final reciterName =
                              AppLocalizations.of(context)?.localeName == 'ar'
                              ? context
                                    .read<AudioPlayerCubit>()
                                    .currentReciter
                                    ?.nameAr
                              : context
                                    .read<AudioPlayerCubit>()
                                    .currentReciter
                                    ?.nameEn;
                          return Text(
                            localeName == 'ar'
                                ? 'سورة ${surah?.name} - $reciterName'
                                : '${surah?.transliteration} - $reciterName',
                            style: Theme.of(context).textTheme.titleLarge,
                          );
                        },
                      ),
                      localeName == 'ar'
                          ? Text(
                              '${surah?.totalVerses} آية • ${surah?.type.getRevelationPlace()}',
                              style: AppTextStyles.overline(),
                            )
                          : Text(
                              '${surah?.totalVerses} verses • ${surah?.type.getRevelationPlace(locleName: 'en')}',
                              style: AppTextStyles.overline(),
                            ),
                    ],
                  ),
                  SizedBox(height: 8.h),

                  AudioControlSet(
                    onPlayButtonTap: () async {
                      await widget.audioPlayerCubit.playOrPause();
                    },
                    onGetNextSurah: () async {
                      await widget.audioPlayerCubit.getNextSurah();
                    },
                    onGetPreviousSurah: () async {
                      await widget.audioPlayerCubit.getPreviousSurah();
                    },
                    onFastForward: () async {
                      await widget.audioPlayerCubit.fastForward();
                    },
                    onRewind: () async {
                      await widget.audioPlayerCubit.rewind();
                    },
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
