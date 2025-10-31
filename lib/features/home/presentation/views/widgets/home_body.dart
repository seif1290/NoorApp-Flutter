import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/theme/styles/app_text_styles.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/views/widgets/build_quran_list.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key, this.onCardTab, this.onPlayButtonTap});
  final Function(int surahNumber)? onCardTab;
  final Function(int surahNumber)? onPlayButtonTap;

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context)?.localeName;
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => current.maybeMap(
        getQuranLoading: (_) => true,
        getQuranSuccess: (_) => true,
        getQuranfailed: (_) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
        return state.maybeMap(
          getQuranLoading: (_) {
            return const Center(child: CircularProgressIndicator());
          },
          getQuranSuccess: (state) {
            return BuildQuranList(
              key: const PageStorageKey<String>('home'),
              surahs: state.surahs,
              onCardTab: onCardTab,
              onPlayButtonTap: onPlayButtonTap,
            );
          },
          getQuranfailed: (state) {
            return Center(
              child: Text(
                localeName == 'ar' ? state.failure.arMsg : state.failure.enMsg,
                textAlign: TextAlign.center,
                style: AppTextStyles.title16,
              ),
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
