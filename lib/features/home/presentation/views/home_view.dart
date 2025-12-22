import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/ui/ui_helpers/ui_helper_functions.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/core/ui/ui_utils/responsive_layout.dart';
import 'package:noor/core/ui/ui_utils/snack_bar_state.dart';
import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/views/widgets/build_bottom_player.dart';
import 'package:noor/features/home/presentation/views/widgets/home_scaffold_tablet.dart';
import 'package:noor/features/home/presentation/views/widgets/home_scaffold_mobile.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

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
    return BlocListener<AudioPlayerCubit, AudioPlayerState>(
      listener: (context, state) {
        state.whenOrNull(
          getSurahFailed: (failure) {
            HelperFunctions.showSnackBar(
              context,
              snackMessage: AppLocalizations.of(context)?.localeName == 'ar'
                  ? failure.arMsg
                  : failure.enMsg,
              snackBarState: SnackBarState.error,
            );
          },
        );
      },
      child: const Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ResponsiveLayout(
            mobile: HomeScaffoldMobile(),
            tablet: HomeScaffoldTablet(),
          ),
          Positioned(
            bottom: AppValues.padding32,
            left: AppValues.padding8,
            right: AppValues.padding8,
            child: BuildBottomPlayer(),
          ),
        ],
      ),
    );
  }
}
