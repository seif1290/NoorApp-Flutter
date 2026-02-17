import 'package:flutter/material.dart';

class DefaultElevatedButton extends StatelessWidget {
  const DefaultElevatedButton({
    super.key,
    required this.text,
    this.showArrow = false,
    this.onPressed,
  });
  final String text;
  final bool showArrow;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      label: Text(text, overflow: TextOverflow.ellipsis),
      icon: showArrow ? const Icon(Icons.arrow_forward) : null,
    );
  }
}
