import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/ui/ui_helpers/ui_helper_functions.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/core/ui/ui_utils/responsive_layout.dart';
import 'package:noor/core/ui/ui_utils/snack_bar_state.dart';
import 'package:noor/features/tarteel/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/tarteel/presentation/view_models/tarteel_bloc/tarteel_bloc.dart';
import 'package:noor/features/tarteel/presentation/views/widgets/build_bottom_player.dart';
import 'package:noor/features/tarteel/presentation/views/widgets/tarteel_scaffold_tablet.dart';
import 'package:noor/features/tarteel/presentation/views/widgets/tarteel_scaffold_mobile.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class TarteelView extends StatefulWidget {
  const TarteelView({super.key});

  @override
  State<TarteelView> createState() => _TarteelViewState();
}

class _TarteelViewState extends State<TarteelView> {
  @override
  void initState() {
    super.initState();
    context.read<TarteelBloc>().add(const GetQuran());
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
            mobile: TarteelScaffoldMobile(),
            tablet: TarteelScaffoldTablet(),
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
