import 'package:bmi_calculate/app_constants/colors/app_colors.dart';
import 'package:bmi_calculate/app_constants/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton(
      {required this.buttonText, required this.onPressed, Key? key})
      : super(key: key);

  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        buttonText,
        style: TextStyles.circleButton,
      ),
      onPressed: onPressed,
      color: AppColors.red,
      height: 45,
      minWidth: 55,
      shape: CircleBorder(side: BorderSide()),
    );
  }
}
