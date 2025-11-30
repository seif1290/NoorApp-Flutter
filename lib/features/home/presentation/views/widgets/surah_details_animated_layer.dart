import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/views/surah_details_view.dart';

class SurahDetailsAnimatedLayer extends StatefulWidget {
  const SurahDetailsAnimatedLayer({super.key});

  @override
  State<SurahDetailsAnimatedLayer> createState() =>
      _SurahDetailsAnimatedLayerState();
}

class _SurahDetailsAnimatedLayerState extends State<SurahDetailsAnimatedLayer>
    with SingleTickerProviderStateMixin {
  late final Animation<Offset> _animation;
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _animation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
          ),
        );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AudioPlayerCubit, AudioPlayerState>(
      listener: (context, state) {
        state.whenOrNull(
          surahDetailsOpened: () {
            _animationController.forward();
          },
          surahDetailsClosed: () {
            _animationController.reverse();
          },
        );
      },
      child: SlideTransition(
        position: _animation,
        child: SurahDetailsView(
          onCloseSurahDetails: () {
            context.read<AudioPlayerCubit>().closeSurahDetails();
          },
        ),
      ),
    );
  }
}
