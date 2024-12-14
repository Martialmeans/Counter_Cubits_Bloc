import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // light theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
  );

  // dark theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
  );
}
