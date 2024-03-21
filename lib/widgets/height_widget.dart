import 'package:bmi_calculate/app_constants/colors/app_colors.dart';
import 'package:bmi_calculate/app_constants/texts/app_texts.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatelessWidget {
  HeightWidget({required this.sliderValue, required this.onChanged, super.key});

  final double sliderValue;
  final Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppTexts.height,
          style: TextStyle(fontSize: 25.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              sliderValue.toInt().toString(),
              style: TextStyle(fontSize: 60.0),
            ),
            SizedBox(
              width: 3.0,
            ),
            Text(
              AppTexts.cm,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: AppColors.red,
            inactiveTrackColor: AppColors.white,
            overlayColor: AppColors.amber,
            thumbColor: AppColors.red,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 22),
          ),
          child: Slider(
            value: sliderValue,
            min: 0.0,
            max: 220.0,
            onChanged: onChanged,
          ),
        )
      ],
    );
  }
}
