import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // private constructor → prevent instantiation

  // Primary Brand Colors
  static const Color primary = Color(0xFF004D40); // أخضر داكن
  static const Color secondary = Color(0xFFCDA434); // ذهبي

  // Background Colors
  static const Color lightBackground = Color(0xFFFAFAFA); // أبيض فاتح
  static const Color darkBackground = Color(
    0xFF004D40,
  ); // أخضر داكن للوضع الليلي

  // Surface Colors
  static const Color lightSurface = Colors.white;
  static const Color darkSurface = Color(0xFF00332D); // أخضر أغمق

  // Text Colors
  static const Color lightTextPrimary = Colors.black87;
  static const Color lightTextSecondary = Colors.black54;
  static const Color darkTextPrimary = Colors.white;
  static const Color darkTextSecondary = Colors.white70;

  // AppBar Colors
  static const Color appBarLightBg = primary;
  static const Color appBarDarkBg = darkBackground;
  static const Color appBarLightFg = Colors.white;
  static const Color appBarDarkFg = secondary;

  // Button Colors
  static const Color buttonLightBg = primary;
  static const Color buttonLightFg = Colors.white;
  static const Color buttonDarkBg = secondary;
  static const Color buttonDarkFg = Colors.black;

  // Borders / Divider
  static const Color lightDivider = Colors.black12;
  static const Color darkDivider = Colors.white24;

  // Special States
  static const Color error = Colors.redAccent;
  static const Color success = Colors.green;
  static const Color warning = Colors.orange;
}
