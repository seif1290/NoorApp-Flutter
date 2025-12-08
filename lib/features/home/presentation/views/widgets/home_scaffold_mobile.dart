import 'package:flutter/material.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/features/home/presentation/views/widgets/app_drawer_content.dart';
import 'package:noor/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:noor/features/home/presentation/views/widgets/build_quran_list.dart';

class HomeScaffoldMobile extends StatelessWidget {
  const HomeScaffoldMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Drawer(child: AppDrawerContent()),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: HomeAppBar(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppValues.padding8),
        child: BuildQuranList(),
      ),
    );
  }
}
