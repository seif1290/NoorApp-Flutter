import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/ui/ui_utils/responsive_layout.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/views/widgets/home_scaffold_tablet.dart';
import 'package:noor/features/home/presentation/views/widgets/home_scaffold_mobile.dart';

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
    return const ResponsiveLayout(
      mobile: HomeScaffoldMobile(),
      tablet: HomeScaffoldTablet(),
    );
  }
}
