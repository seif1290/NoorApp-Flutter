import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:noor/core/localization/l10n/app_localizations.dart';
import 'package:noor/core/routing/route_path.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/views/locale_picker.dart';
import 'package:noor/features/home/presentation/views/surahs_list_view.dart';
import 'package:provider/provider.dart';

import 'package:noor/core/localization/locale_provider.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            LocalePicker(provider: Provider.of<LocaleProvider>(context)),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.homeTitle),

        actions: [
          IconButton(
            onPressed: () {
              // TODO: Implement search functionality
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return Shimmer(
                child: Container(color: Theme.of(context).colorScheme.surface),
              );
            },
            getQuranLoading: () {
              return Shimmer(
                child: Container(color: Theme.of(context).colorScheme.surface),
              );
            },
            getQuranSuccess: (surahs) {
              return Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: AppValues.md.h,
                  horizontal: AppValues.sm.w,
                ),
                child: SurahsListView(
                  surahs: surahs,
                  onCardTab: (surahModel) {
                    context.push(RoutePath.surahDetails, extra: surahModel);
                  },
                ),
              );
            },
            getQuranFailed: (errMsg) {
              return Center(child: Text(errMsg));
            },
          );
        },
      ),
    );
  }
}
