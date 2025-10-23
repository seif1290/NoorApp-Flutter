import 'package:flutter/material.dart';
import 'package:noor/core/utils/app_values.dart';

class AppComponents {
  const AppComponents._();

  static const EdgeInsetsGeometry pagePadding = EdgeInsets.only(
    left: AppValues.padding16,
    right: AppValues.padding16,
    top: AppValues.padding32,
  );

  static double screenWidth(BuildContext context) =>
      MediaQuery.sizeOf(context).width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.sizeOf(context).height;
}
