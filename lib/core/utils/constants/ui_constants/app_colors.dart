import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static const Color primary = Color(0xFF004D40);
  static const Color secondary = Color(0xFFCDA434);

  // Light Mode Colors

  static const Color lightBackground = Color(0xFFFAFAFA);
  static const Color lightSurface = Color(0XFFFFFFFF);
  static const Color lightTextPrimary = Color(0XFF004D40);
  static const Color lightTextSecondary = Color(0XFF6B7280);
  static const Color lightButtonBg = Color(0xFF004D40);
  static const Color lightButtonFg = Color(0XFFFFFFFF);
  static const Color lightIconPrimary = Color(0XFF6B7280);
  static const Color lightIconSecondary = Color.fromRGBO(0, 77, 64, 0.1);
  static const Color lightDivider = Color(0XFFE0E0E0);
  static const Color lightBorder = Color(0XFFE0E0E0);

  // Dark Mode Colors

  static const Color darkBackground = Color(0xFF004D40);
  static const Color darkSurface = Color(0xFF00332D);
  static const Color darkTextPrimary = Color(0XFFFFFFFF);
  static const Color darkTextSecondary = Color(0XFFCDA434);
  static const Color darkButtonBg = Color(0xFFCDA434);
  static const Color darkButtonFg = Color(0XFF004D40);
  static const Color darkIconPrimary = Color(0xFFCDA434);
  static const Color darkIconSecondary = Color.fromRGBO(205, 164, 52, 0.1);
  static const Color darkDivider = Color(0XFF3D3D3D);
  static const Color darkBorder = Color(0XFF3D3D3D);

  // Special States Colors

  static const Color error = Colors.redAccent;
  static const Color success = Colors.green;
  static const Color warning = Colors.orange;
}
