import 'package:bmi_calculate/app_constants/colors/app_colors.dart';
import 'package:bmi_calculate/app_constants/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomMainWidget extends StatelessWidget {
  const CustomMainWidget({
    required this.buttonText,
    required this.onPressed, super.key,
  });

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60.0,
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColors.redAccent,
        height: 45,
        minWidth: double.infinity,
        child: Text(
          buttonText.toUpperCase(),
          style: TextStyles.mainButton,
        ),
      ),
    );
  }
}
