import 'package:flutter/material.dart';

class OnboardingIcon extends StatelessWidget {
  const OnboardingIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 112,
      decoration: ShapeDecoration(
        color: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        shadows: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary,
            blurRadius: 50,
            offset: const Offset(0, 25),
            spreadRadius: -12,
          ),
        ],
      ),
      child: Icon(
        icon,
        size: 48,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}
