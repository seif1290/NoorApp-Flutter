import 'package:flutter/material.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/features/home/presentation/views/widgets/app_drawer_content.dart';
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
          Expanded(child: AppDrawerContent()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppValues.padding8),
              child: BuildQuranList(),
            ),
          ),
        ],
      ),
    );
  }
}
