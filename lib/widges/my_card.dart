import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Widget child;
  final Color color;
  final Function()? onTap;
  const MyCard({
    super.key,
    required this.child,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    );
  }
}
