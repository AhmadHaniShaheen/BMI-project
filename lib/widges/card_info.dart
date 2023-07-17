import 'package:bmi_project/widges/fab_dart.dart';
import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  final String title;
  final double weightNumber;
  final IconData iconRemove;
  final IconData iconAdd;
  final Function() functionRemove;
  final Function() functionAdd;
  const CardInfo({
    super.key,
    required this.title,
    required this.weightNumber,
    required this.iconRemove,
    required this.iconAdd,
    required this.functionRemove,
    required this.functionAdd,
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
            FAButton(function: functionRemove, icon: iconRemove),
            FAButton(function: functionAdd, icon: iconAdd),
          ],
        )
      ],
    );
  }
}
