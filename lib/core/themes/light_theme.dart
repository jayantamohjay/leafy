import 'package:flutter/material.dart';
import 'package:leafy/core/themes/colors.dart';

class AppTheme {
  ThemeData lightTheme() {
    return ThemeData(
      fontFamily: 'Quicksand',
      scaffoldBackgroundColor: Appcolors.lightBackgroundColor,
      colorScheme: ColorScheme.fromSeed(seedColor: Appcolors.primaryColor),
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        backgroundColor: Appcolors.lightBackgroundColor,
        surfaceTintColor: Appcolors.lightBackgroundColor,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Appcolors.primaryColor),
        titleTextStyle: const TextStyle(
          color: Appcolors.primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
