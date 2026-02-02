import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Nebula System Colors
  static const Color background = Color(0xFF050B14);
  static const Color surface = Color(0xFF0F172A);
  static const Color primary = Color(0xFFFFD700); // Starlight Gold
  static const Color primaryVariant = Color(0xFFFDB931);
  static const Color secondary = Color(0xFF7B61FF); // Nebula Purple
  static const Color textHigh = Color(0xFFFFFFFF);
  static const Color textMedium = Color(0xFF94A3B8);
  static const Color error = Color(0xFFFF4B4B);

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: background,
      primaryColor: primary,
      colorScheme: const ColorScheme.dark(
        primary: primary,
        secondary: secondary,
        surface: surface,
        error: error,
        onPrimary: background,
        onSurface: textHigh,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.poppins(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: textHigh,
        ),
        displayMedium: GoogleFonts.poppins(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: textHigh,
        ),
        bodyLarge: GoogleFonts.inter(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: textHigh,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: textHigh,
        ),
        labelSmall: GoogleFonts.inter(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: textMedium,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: textHigh,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent, // We'll custom build this, but set default just in case
        selectedItemColor: primary,
        unselectedItemColor: textMedium,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
