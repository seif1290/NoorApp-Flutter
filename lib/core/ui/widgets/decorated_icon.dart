import 'package:flutter/material.dart';
import 'package:noor/core/theme/app_colors.dart';

class DecoratedIcon extends StatelessWidget {
  const DecoratedIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.lightGreen,
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Icon(icon, color: AppColors.primary),
      ),
    );
  }
}
