import 'package:bmi_project/brain/bmi_brain.dart';
import 'package:bmi_project/constants/colors.dart';
import 'package:bmi_project/widges/card_data.dart';
import 'package:bmi_project/widges/card_info.dart';
import 'package:bmi_project/widges/my_card.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtool show log;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender? selectedGender;
  double height = 120;
  double weight = 60;
  double age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor.withOpacity(0.7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'BMI CULATOR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? const Color(0xffE83D66)
                          : contanirColor.withOpacity(0.9),
                      child: const CardData(
                        icon: Icons.male,
                        title: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? const Color(0xffE83D66)
                          : contanirColor.withOpacity(0.9),
                      child: const CardData(
                        icon: Icons.female,
                        title: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: MyCard(
                color: contanirColor.withOpacity(0.9),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: const TextStyle(
                            fontSize: 48,
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        const Text(
                          'cm',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                          overlayColor: scandryColor.withOpacity(0.9),
                          thumbShape: const RoundSliderThumbShape(
                            enabledThumbRadius: 12,
                          )),
                      child: Slider(
                        thumbColor: scandryColor,
                        activeColor: scandryColor,
                        inactiveColor: Colors.white,
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (value) {
                          setState(() {
                            height = value.round().toDouble();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: MyCard(
                      color: contanirColor.withOpacity(0.9),
                      child: CardInfo(
                        title: 'WEIGHT',
                        weightNumber: weight,
                        iconRemove: Icons.remove,
                        iconAdd: Icons.add,
                        functionRemove: () {
                          setState(() {
                            weight--;
                          });
                        },
                        functionAdd: () {
                          setState(() {
                            weight++;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      color: contanirColor.withOpacity(0.9),
                      child: CardInfo(
                        title: 'AGE',
                        weightNumber: age,
                        iconRemove: Icons.remove,
                        iconAdd: Icons.add,
                        functionRemove: () {
                          setState(() {
                            age--;
                          });
                        },
                        functionAdd: () {
                          setState(() {
                            age++;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              BMIBrain bmiBrain = BMIBrain(weight, height);
              devtool.log(bmiBrain.calculatBMI().toString());
              devtool.log(bmiBrain.checkBMI());
              AlertDialog alertDialog = AlertDialog(
                title: bmiBrain.checkBMI() == 'Normal range'
                    ? Text(
                        '${bmiBrain.checkBMI()}!',
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      )
                    : Text(
                        '${bmiBrain.checkBMI()}!',
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                content: bmiBrain.checkBMI() == 'Normal range'
                    ? Text(
                        'Your score is ${bmiBrain.calculatBMI().round()}, this is a healthy range\n\nGood job!',
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      )
                    : bmiBrain.checkBMI() == 'Overweight'
                        ? Text(
                            'Your score is ${bmiBrain.calculatBMI().round()} is above the healthy range\n\nMake lifestyle',
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                            textAlign: TextAlign.center,
                          )
                        : Text(
                            'Your score is ${bmiBrain.calculatBMI().round()} is under the healthy range.\n \n Good luck!',
                            style: const TextStyle(
                              fontSize: 24,
                            ),
                            textAlign: TextAlign.center,
                          ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'OK',
                      style: TextStyle(color: scandryColor),
                    ),
                  ),
                ],
              );
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return alertDialog;
                },
              );
            },
            child: Container(
              height: 56,
              color: scandryColor,
              child: const Center(
                child: Text(
                  'CULCOLATE',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

enum Gender { male, female }
