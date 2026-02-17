import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultSearchBar extends StatelessWidget {
  const DefaultSearchBar({
    super.key,
    required this.searchController,
    this.hintText,
    this.onChanged,
  });

  final TextEditingController searchController;
  final String? hintText;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: Icon(
        Icons.search,
        color: Theme.of(context).colorScheme.onPrimaryFixed,
        size: 20.h,
      ),
      controller: searchController,
      hintText: hintText,
      onTapOutside: (event) {
        FocusScope.of(context).unfocus();
      },
      onChanged: onChanged,
    );
  }
}
