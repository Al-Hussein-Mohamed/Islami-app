import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: "ElMessiri",
        color: Color(0xFF242424),
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF000000),
      selectedIconTheme: IconThemeData(
        color: Color(0xFF000000),
        size: 35,
      ),
      selectedLabelStyle: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 18,
        fontWeight: FontWeight.w800,
      ),
      showUnselectedLabels: false,
      unselectedItemColor: Color(0xFFFFFFFF),
      unselectedIconTheme: IconThemeData(
        color: Color(0xFFFFFFFF),
        size: 28,
      ),
    ),
    dividerTheme: DividerThemeData(
      color: primaryColor,
      space: 10,
      thickness: 3,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFF242424),
      ),
      bodyLarge: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Color(0xFF242424),
      ),
      bodyMedium: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Color(0xFF242424),
      ),
      bodySmall: TextStyle(
        fontFamily: "ElMessiri",
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Color(0xFF242424),
      ),
    ),
  );
}
