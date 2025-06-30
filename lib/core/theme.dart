import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Colores corporativos (NO naranja)
  static const Color primary = Color(0xFFBB9AFF); // lavanda
  static const Color accent  = Color(0xFFFFD4E1); // rosado suave
  static const Color textDark = Color(0xFF3B284F); // morado oscuro

  static ThemeData light = ThemeData(
    colorScheme: ColorScheme.light(
      primary: primary,
      secondary: accent,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headlineLarge: GoogleFonts.dancingScript(
        fontSize: 56,
        fontWeight: FontWeight.w600,
        color: textDark,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    useMaterial3: true,
  );
}