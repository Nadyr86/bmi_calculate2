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
          'HEIGHT',
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
              'cm',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.red,
            inactiveTrackColor: Colors.white,
            overlayColor: Colors.amber,
            thumbColor: Colors.red,
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
