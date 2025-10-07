import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/views/bottom_player.dart';
import 'package:noor/features/home/presentation/views/error_view.dart';
import 'package:noor/features/home/presentation/views/home_view.dart';
import 'package:noor/features/home/presentation/views/surah_details_view.dart';

import 'package:shimmer_animation/shimmer_animation.dart';

class HomeWrapper extends StatefulWidget {
  const HomeWrapper({super.key});

  @override
  State<HomeWrapper> createState() => _HomeWrapperState();
}

class _HomeWrapperState extends State<HomeWrapper> {
  late final HomeCubit _homeCubit;

  @override
  void initState() {
    super.initState();
    _homeCubit = context.read<HomeCubit>();
    _getQuran();
  }

  Future<void> _getQuran() async {
    await _homeCubit.getQuran(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return state.when(
                initial: () {
                  return Shimmer(
                    child: Container(
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  );
                },
                getQuranLoading: () {
                  return Shimmer(
                    child: Container(
                      color: Theme.of(context).colorScheme.surface,
                    ),
                  );
                },
                getQuranSuccess: (surahs) {
                  return PopScope(
                    canPop: false,
                    child: Navigator(
                      onGenerateRoute: (settings) {
                        return MaterialPageRoute(
                          builder: (context) {
                            return HomeView(
                              surahs: surahs,
                              onSurahCardTab: (currentSurah) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return SurahDetailsView(
                                        ayahs: currentSurah.ayahs,
                                        surahName: currentSurah.name,
                                      );
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  );
                },
                getQuranFailed: (errMsg) {
                  return ErrorView(errMsg: errMsg);
                },
              );
            },
          ),
        ),
        Align(alignment: Alignment.bottomCenter, child: BottomPlayer()),
      ],
    );
  }
}
