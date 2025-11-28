import 'package:flutter/material.dart';
import 'package:noor/features/home/presentation/views/widgets/app_drawer.dart';
import 'package:noor/features/home/presentation/views/widgets/build_bottom_player.dart';
import 'package:noor/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:noor/features/home/presentation/views/widgets/build_quran_list.dart';

class HomeScaffoldTablet extends StatefulWidget {
  const HomeScaffoldTablet({super.key});

  @override
  State<HomeScaffoldTablet> createState() => _HomeScaffoldTabletState();
}

class _HomeScaffoldTabletState extends State<HomeScaffoldTablet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: HomeAppBar(),
      ),
      body: Row(
        children: [
          Expanded(child: AppDrawer()),
          Expanded(
            flex: 8,
            child: Stack(children: [BuildQuranList(), BuildBottomPlayer()]),
          ),
        ],
      ),
    );
  }
}
