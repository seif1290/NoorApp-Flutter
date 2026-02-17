import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultSettingsCard extends StatelessWidget {
  const DefaultSettingsCard({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.subtitle,
    this.onTap,
    this.trailing,
  });
  final IconData leadingIcon;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        margin: EdgeInsets.zero,
        child: ListTile(
          onTap: onTap,
          leading: Icon(
            leadingIcon,
            size: 32.h,
            color: Theme.of(context).primaryColor,
          ),

          title: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          subtitle: Text(
            '$subtitle',
            style: Theme.of(context).textTheme.labelSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          trailing: trailing,
        ),
      ),
    );
  }
}
