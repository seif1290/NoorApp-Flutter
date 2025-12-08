import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:noor/core/routing/routes.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/core/ui/ui_utils/custom_icons.dart';
import 'package:noor/core/ui/widgets/decorated_icon.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class AppDrawerContent extends StatelessWidget {
  const AppDrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerItem(
              icon: CustomIcons.bookOpen,
              title: '${AppLocalizations.of(context)?.recitations}',
              onTap: () {},
            ),
            DrawerItem(
              icon: Icons.headphones_outlined,
              title: '${AppLocalizations.of(context)?.homeTitle}',
              onTap: () {},
            ),
            DrawerItem(
              icon: CustomIcons.noteBook,
              title: '${AppLocalizations.of(context)?.ahadith}',
              onTap: () {},
            ),
            DrawerItem(
              icon: Icons.favorite_outline,
              title: '${AppLocalizations.of(context)?.adhkar}',
              onTap: () {},
            ),
            DrawerItem(
              icon: Icons.settings_outlined,
              title: '${AppLocalizations.of(context)?.settings}',
              onTap: () {
                context.push(Routes.settings);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;
  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            DecoratedIcon(icon: icon),
            Gap(16.w),
            Text(title, style: AppTextStyles.font14_18GreenRegular(context)),
          ],
        ),
      ),
    );
  }
}
