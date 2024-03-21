import 'package:bmi_calculate/app_constants/colors/app_colors.dart';
import 'package:bmi_calculate/app_constants/text_styles/app_text_styles.dart';
import 'package:bmi_calculate/app_constants/texts/app_texts.dart';
import 'package:bmi_calculate/data/repo/bmi_repo.dart';
import 'package:bmi_calculate/widgets/custom_card.dart';
import 'package:bmi_calculate/widgets/custom_main_widget.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  const BmiResult({required this.bmiResult, Key? key}) : super(key: key);

  final double bmiResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bmiResult.toString().toUpperCase()),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.width * 0.9,
          child: CustomCard(
            bgColor: AppColors.mainColor,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bmiRepo.getResult(bmiResult),
                    style: TextStyles.result
                  ),
                  Text(
                    bmiResult.toStringAsFixed(1),
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      bmiRepo.getInterpretation(bmiResult),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomMainWidget(
          buttonText: AppTexts.reCalculate,
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
