import 'package:bmi_calculate/brain/bmi_brain.dart';
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

  Color _selectedColor = Color(0xff080707);
  Color _unSelectedColor = Color(0xFF1F2230);

  Gender _gender = Gender.NONE;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
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
                      onTap: () {
                        setState(() {
                          _gender = Gender.MALE;
                        });
                      },
                      icon: FontAwesomeIcons.mars,
                      text: ('Male'),
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
                        onTap: () {
                          setState(() {
                            _gender = Gender.FEMALE;
                          });
                        },
                        icon: FontAwesomeIcons.venus,
                        text: ('Famale')),
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
                bgColor: Color(0xff24263b),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  CustomCard(
                    child: AgeAndWeightWidget(
                      title: 'Weight',
                      ageOrWeight: _weight.toString(),
                      increment: () {
                        setState(() {
                          _weight--;
                        });
                      },
                      decrement: () {
                        setState(() {
                          _weight++;
                        });
                      },
                    ),
                    bgColor: Color(0xff24263b),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  CustomCard(
                    child: AgeAndWeightWidget(
                      title: 'Age',
                      ageOrWeight: _age.toString(),
                      increment: () {
                        setState(() {
                          _age--;
                        });
                      },
                      decrement: () {
                        setState(() {
                          _age++;
                          ;
                        });
                        _age++;
                      },
                    ),
                    bgColor: Color(0xff24263b),
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
        buttonText: "Calculate",
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BmiResult(
                      bmiResult: bmiBrain.calculateBmi(_weight, _height))));
        },
      ),
    );
  }
}
