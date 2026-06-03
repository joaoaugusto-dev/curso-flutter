import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xff00d7f3),
    brightness: Brightness.light,
  ),
  useMaterial3: true,
  textTheme: GoogleFonts.interTextTheme(),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[100],
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(shape: StadiumBorder()),
  ),
  snackBarTheme: SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.white,
  ),
);

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xff00d7f3),
    brightness: Brightness.dark,
  ),
  useMaterial3: true,
  textTheme: GoogleFonts.interTextTheme(
    ThemeData(brightness: Brightness.dark).textTheme,
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: Colors.grey[850],
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(shape: StadiumBorder()),
  ),
  snackBarTheme: SnackBarThemeData(behavior: SnackBarBehavior.floating),
);
