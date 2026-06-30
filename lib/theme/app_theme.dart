import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF0077B6);
  static const Color primaryLight = Color(0xFF00B4D8);
  static const Color accent = Color(0xFF48CAE4);
  static const Color background = Color(0xFFF0F8FF);
  static const Color cardBg = Colors.white;
  static const Color textDark = Color(0xFF023E8A);
  static const Color textMid = Color(0xFF0077B6);
  static const Color textLight = Color(0xFF90E0EF);
  static const Color grey = Color(0xFF8D99AE);
  static const Color lightGrey = Color(0xFFF1F3F5);
  static const Color success = Color(0xFF2DC653);
  static const Color warning = Color(0xFFFFB703);
  static const Color error = Color(0xFFE63946);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF0077B6), Color(0xFF48CAE4)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient splashGradient = LinearGradient(
    colors: [Color(0xFF023E8A), Color(0xFF0077B6), Color(0xFF48CAE4)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(
          primary: AppColors.primary,
          secondary: AppColors.primaryLight,
          surface: AppColors.background,
        ),
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'Poppins',
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: AppColors.textDark),
          titleTextStyle: TextStyle(
            color: AppColors.textDark,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
          ),
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
            fontFamily: 'Poppins',
          ),
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: AppColors.textDark,
            fontFamily: 'Poppins',
          ),
          titleLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: AppColors.textDark,
            fontFamily: 'Poppins',
          ),
          titleMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.textDark,
            fontFamily: 'Poppins',
          ),
          bodyLarge: TextStyle(
            fontSize: 15,
            color: AppColors.grey,
            fontFamily: 'Poppins',
          ),
          bodyMedium: TextStyle(
            fontSize: 13,
            color: AppColors.grey,
            fontFamily: 'Poppins',
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      );
}
