import 'package:flutter/material.dart';

class AppTheme {
  // Define custom colors
  static const Color primaryColor = Color(0xFF4CAF50);
  static const Color secondaryColor = Color(0xFF2196F3);
  static const Color accentColor = Color(0xFFFFC107);

  // Define additional colors
  static const Color blackColor = Color(0xFF000000);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color greyColor = Color(0xFFBDBDBD);

  // Define text styles
  static const TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
        fontSize: 32.0, fontWeight: FontWeight.bold, color: blackColor),
    displayMedium: TextStyle(
        fontSize: 24.0, fontWeight: FontWeight.bold, color: blackColor),
    bodyLarge: TextStyle(
        fontSize: 16.0, fontWeight: FontWeight.normal, color: blackColor),
    bodyMedium: TextStyle(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: blackColor),
  );

  // Define button styles
  static final ButtonThemeData buttonTheme = ButtonThemeData(
    buttonColor: primaryColor,
    textTheme: ButtonTextTheme.primary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
  );

// Define custom ThemeData
  static final ThemeData themeData = ThemeData(
    primaryColor: primaryColor,
    secondaryHeaderColor: secondaryColor,
    scaffoldBackgroundColor: whiteColor,
    appBarTheme: AppBarTheme(
      color: primaryColor,
      iconTheme: const IconThemeData(color: whiteColor),
      toolbarTextStyle: textTheme.bodyMedium,
      titleTextStyle: textTheme.titleLarge,
    ),
    textTheme: textTheme,
    buttonTheme: buttonTheme,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: primaryColor),
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: whiteColor,
      titleTextStyle: textTheme.displayMedium,
      contentTextStyle: textTheme.bodyLarge,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColor),
  );
}
