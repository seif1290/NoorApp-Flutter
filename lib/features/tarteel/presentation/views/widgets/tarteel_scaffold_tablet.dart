import 'package:flutter/material.dart';
import 'package:noor/core/ui/ui_utils/app_values.dart';
import 'package:noor/features/tarteel/presentation/views/widgets/app_drawer_content.dart';
import 'package:noor/features/tarteel/presentation/views/widgets/tarteel_app_bar.dart';
import 'package:noor/features/tarteel/presentation/views/widgets/tarteel_view_body_body.dart';

class TarteelScaffoldTablet extends StatefulWidget {
  const TarteelScaffoldTablet({super.key});

  @override
  State<TarteelScaffoldTablet> createState() => _TarteelScaffoldTabletState();
}

class _TarteelScaffoldTabletState extends State<TarteelScaffoldTablet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: TarteelAppBar(),
      ),
      body: Row(
        children: [
          Expanded(child: AppDrawerContent()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppValues.padding16),
              child: TarteelViewBody(),
            ),
          ),
        ],
      ),
    );
  }
}
