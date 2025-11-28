import 'package:flutter/material.dart';
import 'package:noor/features/home/presentation/views/widgets/app_drawer.dart';
import 'package:noor/features/home/presentation/views/widgets/build_bottom_player.dart';
import 'package:noor/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:noor/features/home/presentation/views/widgets/build_quran_list.dart';

class HomeScaffoldMobile extends StatelessWidget {
  const HomeScaffoldMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: AppDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: HomeAppBar(),
      ),
      body: Stack(children: [BuildQuranList(), BuildBottomPlayer()]),
    );
  }
}
