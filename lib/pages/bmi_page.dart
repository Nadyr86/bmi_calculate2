import 'package:bmi_calculate/app_constants/colors/app_colors.dart';
import 'package:bmi_calculate/app_constants/texts/app_texts.dart';
import 'package:bmi_calculate/data/repo/bmi_repo.dart';
import 'package:bmi_calculate/pages/bmi_result.dart';
import 'package:bmi_calculate/widgets/age_and%20_weight_widget.dart';
import 'package:bmi_calculate/widgets/custom_card.dart';
import 'package:bmi_calculate/widgets/custom_main_widget.dart';
import 'package:bmi_calculate/widgets/gender_widget.dart';
import 'package:bmi_calculate/widgets/height_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { NONE, MALE, FEMALE }

class BmiPage extends StatefulWidget {
  const BmiPage({Key? key}) : super(key: key);

  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  double _height = 170.0;

  int _weight = 60;
  int _age = 18;

  Color _selectedColor = AppColors.selectedColor;
  Color _unSelectedColor = AppColors.unSelectedColor;

  Gender _gender = Gender.NONE;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTexts.bmiCalculator),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                    bgColor: _gender == Gender.MALE
                        ? _selectedColor
                        : _unSelectedColor,
                    child: GenderWidget(
                      onTap: () => _chooseGender(Gender.MALE),
                      icon: FontAwesomeIcons.mars,
                      text: AppTexts.male,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  CustomCard(
                    bgColor: _gender == Gender.FEMALE
                        ? _selectedColor
                        : _unSelectedColor,
                    child: GenderWidget(
                      onTap: () => _chooseGender(Gender.FEMALE),
                      icon: FontAwesomeIcons.venus,
                      text: AppTexts.famale,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomCard(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 22.0),
                  child: HeightWidget(
                    sliderValue: _height,
                    onChanged: (double ozgorgon) {
                      setState(() {
                        _height = ozgorgon;
                      });
                    },
                  ),
                ),
                bgColor: AppColors.mainColor,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  CustomCard(
                    child: AgeAndWeightWidget(
                      title: AppTexts.weight,
                      ageOrWeight: _weight.toString(),
                      increment: () {
                        setState(() {
                          _weight++;
                        });
                      },
                      decrement: () {
                        setState(() {
                          _weight--;
                        });
                      },
                    ),
                    bgColor: AppColors.mainColor,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  CustomCard(
                    child: AgeAndWeightWidget(
                      title: AppTexts.age,
                      ageOrWeight: _age.toString(),
                      increment: () {
                        setState(() {
                          _age++;
                        });
                      },
                      decrement: () {
                        setState(() {
                          _age--;
                        });
                      },
                    ),
                    bgColor: AppColors.mainColor,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomMainWidget(
        buttonText: AppTexts.calculate,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BmiResult(
                      bmiResult: bmiRepo.calculateBmi(_weight, _height))));
        },
      ),
    );
  }

 void _chooseGender(Gender _chooseGender) {
    setState(() {
      _gender = _chooseGender;
    });
  }
}
