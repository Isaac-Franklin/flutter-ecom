import 'package:flutter/material.dart';

class TColors {
  TColors._();
  // APP BASIC COLORS
  static const Color primary = Color(0xFF4b68ff);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  // TEXT COLOR
  static const Color textprimary = Color(0xFF333333);
  static const Color textseconday = Color(0xFF6C7570);
  static const Color textwhite = Colors.white;

  // BACKGROUND COLOR
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF6C7570);
  static const Color primarybackground = Color(0xFFF3F5FF);

  // BACKGROUND CONTAINER COLOR
  static const Color lightcontainer = Color(0xFFF6F6F6);
  static Color darkcontainer = TColors.light.withOpacity(0.1);

  // BUTTON COLORS
  static const Color buttonprimary = Color(0xFF4b68ff);
  static const Color buttonsecondary = Color(0xFF6C7570);
  static const Color buttondisabled = Color(0xFFC4C4C4);

  // BORDER COLORS
  static const Color borderprimary = Color(0xFFD9D9D9);
  static const Color bordersecondary = Color(0xFFE6E6E6);

  // ERROR AND VALIDATION COLORS
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // NEUTRAL SHADES
  static const Color black = Color(0xFF232323);
  static const Color darkergrey = Color(0xFF4F4F4F);
  static const Color darkgrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);

// GRADIENT COLOR
  static const Gradient lineargradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
      ]);
}
