import 'package:flutter/material.dart';

class AppConstant {
  static Color lightBgColor = Colors.deepPurple.shade100;
  static Color lightPrimary = Colors.deepPurple;
  static Color lightFontColor = Colors.deepPurple;
  static Color lightContainer = Colors.white;
}

class AppTheme {
  static var lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppConstant.lightBgColor,
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.5,
      ),
      color: Colors.deepPurple,
      centerTitle: true,
    ),
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      surface: AppConstant.lightBgColor,
      onSurface: AppConstant.lightFontColor,
      primaryContainer: AppConstant.lightContainer,
      primary: AppConstant.lightPrimary,
    ),
  );
}
