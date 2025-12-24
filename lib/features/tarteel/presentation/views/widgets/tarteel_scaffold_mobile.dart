import 'package:flutter/material.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/features/tarteel/presentation/views/widgets/app_drawer_content.dart';
import 'package:noor/features/tarteel/presentation/views/widgets/tarteel_app_bar.dart';
import 'package:noor/features/tarteel/presentation/views/widgets/tarteel_view_body_body.dart';

class TarteelScaffoldMobile extends StatelessWidget {
  const TarteelScaffoldMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Drawer(child: AppDrawerContent()),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: TarteelAppBar(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppValues.padding16),
        child: TarteelViewBody(),
      ),
    );
  }
}
