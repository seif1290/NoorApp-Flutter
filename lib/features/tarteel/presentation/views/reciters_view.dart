import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/core/utils/ui_helper_functions.dart';
import 'package:noor/core/utils/app_values.dart';
import 'package:noor/core/utils/snack_bar_state.dart';
import 'package:noor/features/tarteel/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/tarteel/presentation/view_models/tarteel_bloc/tarteel_bloc.dart';
import 'package:noor/features/tarteel/presentation/widgets/build_bottom_player.dart';
import 'package:noor/core/widgets/custom_app_bar.dart';
import 'package:noor/features/tarteel/presentation/widgets/tarteel_view_body_body.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class RecitersView extends StatefulWidget {
  const RecitersView({super.key});

  @override
  State<RecitersView> createState() => _RecitersViewState();
}

class _RecitersViewState extends State<RecitersView>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
    context.read<TarteelBloc>().add(const GetQuran());
  }

  @override
  Widget build(BuildContext context) {
    final TarteelBloc homeBloc = context.read<TarteelBloc>();
    super.build(context);
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
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Scaffold(
            appBar: CustomAppBar(
              title: AppLocalizations.of(context)!.tarteelTitle,
              subtitle: BlocBuilder<TarteelBloc, TarteelState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    getQuranSuccess: (quran) {
                      return Text(
                        '${quran.length} ${AppLocalizations.of(context)!.surah}',
                        style: AppTextStyles.overline().copyWith(
                          color: Theme.of(context).colorScheme.onPrimaryFixed,
                        ),
                      );
                    },
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                  );
                },
              ),
              searchController: homeBloc.searchController,
              onChanged: (value) {
                homeBloc.add(const Search());
              },
              hintText: AppLocalizations.of(context)!.searhForSurah,
            ),
            body: const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppValues.padding16),
              child: TarteelViewBody(),
            ),
          ),
          const Positioned(
            bottom: 8,
            left: 12,
            right: 12,
            child: BuildBottomPlayer(),
          ),
        ],
      ),
    );
  }
}
