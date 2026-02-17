import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:noor/core/routing/routes.dart';
import 'package:noor/core/widgets/default_search_bar.dart';

/// widget that displays a custom app bar with a title, subtitle, and search bar.
/// if searchController and onChanged are not null, it will display a search bar.
/// if actions is not null, it will display the actions in the app bar.

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? subtitle;
  final TextEditingController? searchController;
  final Function(String)? onChanged;
  final String? hintText;
  final Widget? leading;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    this.title,
    this.subtitle,
    this.searchController,
    this.onChanged,
    this.hintText,
    this.leading,
    this.actions,
  });

  bool get _showSearchBar => searchController != null && onChanged != null;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      actions:
          actions ??
          [
            IconButton(
              onPressed: () {
                context.push(Routes.settings);
              },
              icon: const Icon(Icons.settings),
            ),
          ],
      title: Column(children: [Text('$title'), ?subtitle]),
      bottom: _showSearchBar
          ? PreferredSize(
              preferredSize: Size.fromHeight(60.h),
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.h),
                child: DefaultSearchBar(
                  searchController: searchController!,
                  onChanged: onChanged,
                  hintText: hintText,
                ),
              ),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
    _showSearchBar ? (kToolbarHeight + 64.h) : kToolbarHeight,
  );
}
