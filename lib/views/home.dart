import 'package:bmi_project/constants/colors.dart';
import 'package:bmi_project/widges/card_data.dart';
import 'package:bmi_project/widges/fab_dart.dart';
import 'package:bmi_project/widges/my_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      color: contanirColor.withOpacity(0.9),
                      child: const CardData(
                        icon: Icons.male,
                        title: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      color: contanirColor.withOpacity(0.9),
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '181',
                          style: TextStyle(
                            fontSize: 48,
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      thumbColor: Colors.red,
                      activeColor: Colors.red,
                      inactiveColor: Colors.white,
                      value: 0.3,
                      onChanged: (value) {},
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
                      child: const CardInfo(
                        title: 'WEIGHT',
                        weightNumber: 63,
                        iconRemove: Icons.remove,
                        iconAdd: Icons.add,
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyCard(
                      color: contanirColor.withOpacity(0.9),
                      child: const CardInfo(
                        title: 'AGE',
                        weightNumber: 63,
                        iconRemove: Icons.remove,
                        iconAdd: Icons.add,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 56,
            color: const Color(0xffE83D66),
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
        ],
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
  final String title;
  final int weightNumber;
  final IconData iconRemove;
  final IconData iconAdd;
  const CardInfo({
    super.key,
    required this.title,
    required this.weightNumber,
    required this.iconRemove,
    required this.iconAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          weightNumber.toString(),
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FAButton(function: () {}, icon: iconRemove),
            FAButton(function: () {}, icon: iconAdd),
          ],
        )
      ],
    );
  }
}
