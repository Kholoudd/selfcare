import 'dart:ui';

import 'package:flutter/material.dart';

class ApplicationTheme {
  static Color primaryColor = const Color(0xFF79AC78);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    // scaffoldBackgroundColor: const Color(0xFFDFECDB),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.cyan,
      onPrimary: Color(0xFFECFDF3),
      onSecondary: const Color(0xFFDFECDB),
      primary: const Color(0xFFB7935F),
      background: Colors.white,
    ),
    // appBarTheme: AppBarTheme(
    //   iconTheme: IconThemeData(color: Colors.black),
    //   backgroundColor: primaryColor,
    //   elevation: 0.0,
    //   centerTitle: false,
    //   titleTextStyle: TextStyle(
    //     fontSize: 30,
    //     fontWeight: FontWeight.bold,
    //     color: Colors.black,
    //   ),
    // ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: primaryColor,
      ),
      selectedItemColor: primaryColor,
      unselectedIconTheme: IconThemeData(
        color: Colors.grey,
      ),
      unselectedItemColor: Colors.grey,
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: Colors.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        bodySmall: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        )),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
    ),
    // bottomSheetTheme: BottomSheetThemeData(
    //   backgroundColor: const Color(0xFFB7935F).withOpacity(0.7),
    // ),
  );
}
