import 'package:flutter/material.dart';

abstract final class AppColors {
  // ==== Brand & Accent colors ====
  static const primary      = Color(0xFF4C6FFF); // asosiy ko‘k
  static const primaryDark  = Color(0xFF3B4FD9);
  static const accent       = Color(0xFF22C55E); // success / “active”
  static const warning      = Color(0xFFF59E0B);
  static const error        = Color(0xFFEF4444);

  // ==== Neutral (light) ====
  static const neutral900   = Color(0xFF111827); // asosiy matn (light)
  static const neutral700   = Color(0xFF4B5563);
  static const neutral500   = Color(0xFF9CA3AF);
  static const neutral300   = Color(0xFFD1D5DB);
  static const neutral100   = Color(0xFFF3F4F6);

  // Light background & surface
  static const lightBg      = Color(0xFFF5F5FA); // umumiy fon
  static const lightSurface = Colors.white;      // card, dialog

  // ==== Neutral (dark) ====
  static const darkBg       = Color(0xFF020617); // ilova foni
  static const darkSurface  = Color(0xFF0B1120); // card, dialog
  static const darkBorder   = Color(0xFF1E293B);
  static const darkText     = Colors.white;
  static const darkTextMuted= Color(0xFF9CA3AF);

  // ==== ColorScheme’lar ====

  static const ColorScheme lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: Colors.white,
    secondary: primaryDark,
    onSecondary: Colors.white,
    error: error,
    onError: Colors.white,
    background: lightBg,
    onBackground: neutral900,
    surface: lightSurface,
    onSurface: neutral900,
  );

  static const ColorScheme darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: primary,
    onPrimary: Colors.white,
    secondary: primaryDark,
    onSecondary: Colors.white,
    error: error,
    onError: Colors.white,
    background: darkBg,
    onBackground: darkText,
    surface: darkSurface,
    onSurface: darkText,
  );
}
