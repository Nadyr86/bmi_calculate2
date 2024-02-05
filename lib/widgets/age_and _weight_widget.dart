import 'package:bmi_calculate/widgets/custom_circle_button.dart';
import 'package:flutter/material.dart';

class AgeAndWeightWidget extends StatelessWidget {
  const AgeAndWeightWidget(
      {required this.title,
      required this.ageOrWeight,
      required this.increment,
      required this.decrement,
      Key? key})
      : super(key: key);

  final String title;
  final String ageOrWeight;
  final Function() increment;
  final Function() decrement;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          Text(
            ageOrWeight,
            style: TextStyle(fontSize: 60),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCircleButton(
                buttonText: '-',
                onPressed: decrement,
              ),
              SizedBox(
                width: 5.0,
              ),
              CustomCircleButton(
                buttonText: '+',
                onPressed: increment,
              )
            ],
          )
        ],
      ),
    );
  }
}
