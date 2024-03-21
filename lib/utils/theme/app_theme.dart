import 'package:bmi_calculate/app_constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme() {
   return ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(backgroundColor: AppColors.mainColor),
      useMaterial3: true,
    );
  }
}
