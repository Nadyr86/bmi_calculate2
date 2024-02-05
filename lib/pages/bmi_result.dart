import 'package:bmi_calculate/brain/bmi_brain.dart';
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
            bgColor: Color(0xff323244),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    bmiBrain.getResult(bmiResult),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff43DA8C)),
                  ),
                  Text(
                    bmiResult.toStringAsFixed(1),
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      bmiBrain.getInterpretation(bmiResult),
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
          buttonText: 'Re-calculate',
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
