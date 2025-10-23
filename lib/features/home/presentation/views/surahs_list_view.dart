import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/theme/styles/app_colors.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/views/surah_card.dart';

class SurahsListView extends StatelessWidget {
  const SurahsListView({super.key, required this.surahs, this.onCardTab});
  final List<SurahModel> surahs;
  final Function(int surahNumber)? onCardTab;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: surahs.length,
      itemBuilder: (context, index) {
        return SurahCard(
          surahModel: surahs[index],
          surahNumber: index + 1,
          onCardTab: onCardTab != null
              ? () {
                  onCardTab!(index + 1);
                }
              : () {},
          trailingIcon: BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
            buildWhen: (previous, current) =>
                current is AudioPlaying || current is AudioPaused,
            builder: (context, state) {
              late IconData iconData;
              if (state is AudioPlaying && state.surahNumber == index + 1) {
                iconData = Icons.pause_outlined;
              } else {
                iconData = Icons.play_arrow_outlined;
              }
              return Icon(iconData, color: AppColors.secondary);
            },
          ),
        );
      },
    );
  }
}
