import 'package:flutter/material.dart';

class DefaultIconbutton extends StatelessWidget {
  const DefaultIconbutton({super.key, this.onPressed, this.isBack = false});
  final VoidCallback? onPressed;
  final bool isBack;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(16),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
      ),
      child: Icon(isBack ? Icons.arrow_back : Icons.arrow_forward),
    );
  }
}
