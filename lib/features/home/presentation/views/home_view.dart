import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:noor/features/home/presentation/views/widgets/home_scaffold.dart';
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
    return const Stack(children: [HomeScaffold(), SurahDetailsAnimatedLayer()]);
  }
}
