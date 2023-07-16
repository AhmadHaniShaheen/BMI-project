import 'package:flutter/material.dart';

class FAButton extends StatelessWidget {
  final Function() function;
  final IconData icon;

  const FAButton({
    super.key,
    required this.function,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: function,
      constraints: const BoxConstraints(minWidth: 60, minHeight: 44),
      shape: const CircleBorder(),
      fillColor: Colors.white,
      child: Icon(icon),
    );
  }
}
