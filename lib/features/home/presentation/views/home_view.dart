import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/core/ui/ui_utils/responsive_layout.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/views/widgets/build_bottom_player.dart';
import 'package:noor/features/home/presentation/views/widgets/home_scaffold_tablet.dart';
import 'package:noor/features/home/presentation/views/widgets/home_scaffold_mobile.dart';
import 'package:noor/features/home/presentation/views/widgets/surah_details_animated_layer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    _getQuran();
  }

  Future<void> _getQuran() async {
    await context.read<HomeCubit>().getQuran();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        const ResponsiveLayout(
          mobile: HomeScaffoldMobile(),
          tablet: HomeScaffoldTablet(),
        ),
        const Positioned(
          bottom: AppValues.padding32,
          left: AppValues.padding8,
          right: AppValues.padding8,
          child: BuildBottomPlayer(),
        ),
        const SurahDetailsAnimatedLayer(),

        BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
          buildWhen: (previous, current) => current.maybeWhen(
            getSurahLoading: () => true,
            getSurahSuccess: (_) => true,
            getSurahFailed: (_) => true,
            orElse: () => false,
          ),
          builder: (context, state) {
            return state.maybeWhen(
              getSurahLoading: () => Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black54,
                child: const Center(child: CircularProgressIndicator()),
              ),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ],
    );
  }
}
