import 'package:bmi_calculate/app_constants/colors/app_colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle mainButton =
      TextStyle(color: AppColors.white, fontSize: 25.0);
  static TextStyle ageOrWeight = TextStyle(fontSize: 60);
  static TextStyle circleButton = TextStyle(
    color: AppColors.white,
    fontSize: 42,
    fontWeight: FontWeight.bold,
  );
  static TextStyle result = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.green);
}
