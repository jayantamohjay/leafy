import 'package:flutter/material.dart';
import 'package:leafy/core/themes/colors.dart';

class AppTheme {
  ThemeData lightTheme() {
    return ThemeData(
      scaffoldBackgroundColor: Appcolors.lightBackgroundColor,
      colorScheme: ColorScheme.fromSeed(seedColor: Appcolors.primaryColor),
      useMaterial3: true,
    );
  }
}
