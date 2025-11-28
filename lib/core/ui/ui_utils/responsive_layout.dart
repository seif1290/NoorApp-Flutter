import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
  });
  static const double tabletBreakPoint = 650;

  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).shortestSide < tabletBreakPoint;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).shortestSide >= tabletBreakPoint;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < tabletBreakPoint) {
          return mobile;
        } else {
          return tablet;
        }
      },
    );
  }
}
