import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/helper_functions/num_to_arabic.dart';
import 'package:noor/core/theme/styles/app_colors.dart';
import 'package:noor/core/theme/styles/app_text_styles.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/localization/l10n/app_localizations.dart';
import 'package:noor/core/utils/app_values.dart';
import 'package:noor/features/home/data/models/revelation_place.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';

class SurahCard extends StatefulWidget {
  const SurahCard({
    super.key,
    required this.surahModel,
    this.onCardTab,
    required this.surahNumber,
    required this.index,
    this.onPlayButtonTap,
  });
  final SurahModel surahModel;
  final int surahNumber;
  final int index;
  final VoidCallback? onCardTab;
  final VoidCallback? onPlayButtonTap;

  @override
  State<SurahCard> createState() => _SurahCardState();
}

class _SurahCardState extends State<SurahCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('buid');
    final languageCode = Localizations.localeOf(context).languageCode;
    return Card(
      child: ListTile(
        onTap: widget.onCardTab,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 21,
          horizontal: AppValues.padding16,
        ),
        leading: Container(
          height: 40.h,
          width: 40.w,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightBlack,
          ),
          child: Text(
            languageCode == 'ar'
                ? numToArabic(number: widget.surahNumber)
                : widget.surahNumber.toString(),
            style: AppTextStyles.heading20,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: Text(
            languageCode == 'ar'
                ? widget.surahModel.surahNameArabicLong
                : widget.surahModel.surahName,
            style: AppTextStyles.title16,
          ),
        ),
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.ayah(widget.surahModel.totalAyah),
              style: AppTextStyles.title12,
            ),
            AppValues.gap12,
            Container(
              decoration: BoxDecoration(
                color: const Color(0X1ACDA434),
                borderRadius: BorderRadius.circular(AppValues.padding8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 2.h),
              child: Text(
                widget.surahModel.revelationPlace.getRevelationPlace(
                  languageCode: languageCode,
                ),
                style: AppTextStyles.title12.copyWith(
                  color: AppColors.secondary,
                ),
              ),
            ),
          ],
        ),
        trailing: InkWell(
          onTap: widget.onPlayButtonTap,
          child: Container(
            height: 40.h,
            width: 40.w,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.offWhite,
            ),
            child: BlocListener<AudioPlayerCubit, AudioPlayerState>(
              listenWhen: (previous, current) =>
                  current is AudioPlaying || current is AudioPaused,
              listener: (context, state) {
                if (state is AudioPlaying &&
                    state.surahNumber == widget.index + 1) {
                  _animationController.forward();
                } else {
                  _animationController.reverse();
                }
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                color: AppColors.secondary,
                progress: _animationController,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
