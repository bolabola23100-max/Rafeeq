import 'package:rafeeq/core/styles/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // Common Input Decoration
  static InputDecorationTheme inputTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.white,
      hintStyle: const TextStyle(color: AppColors.gray),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: AppColors.primaryColor.withValues(alpha: .2),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primaryColor, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.red, width: 2),
      ),
    );
  }

  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.white,
    inputDecorationTheme: inputTheme(),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.dark),
      bodyMedium: TextStyle(color: AppColors.dark),
      titleLarge: TextStyle(color: AppColors.dark),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      elevation: 0,
      centerTitle: false,
      iconTheme: IconThemeData(color: AppColors.dark),
      titleTextStyle: TextStyle(
        color: AppColors.dark,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      surfaceTintColor: Colors.transparent,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      onPrimary: Colors.white,
      surface: AppColors.white,
      onSurface: AppColors.dark,
      secondary: AppColors.lightGray,
      onSecondary: AppColors.dark,
    ),
  );
}
