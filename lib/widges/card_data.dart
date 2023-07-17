import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  final IconData icon;
  final String title;
  const CardData({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 50,
          color: Colors.white,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 16, color: Colors.white),
        ),
      ],
    );
  }
}
