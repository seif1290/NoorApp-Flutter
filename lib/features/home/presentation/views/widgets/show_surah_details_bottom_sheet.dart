import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/views/surah_details_view.dart';

Future<void> showSurahDetailsBottomSheet(BuildContext context) async {
  final audioplayerCubit = context.read<AudioPlayerCubit>();

  await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    builder: (context) {
      return BlocProvider.value(
        value: audioplayerCubit,
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SurahDetailsView(
            onCloseSurahDetails: () {
              context.pop();
            },
            audioPlayerCubit: audioplayerCubit,
          ),
        ),
      );
    },
  );
}
