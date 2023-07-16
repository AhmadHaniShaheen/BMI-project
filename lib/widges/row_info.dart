import 'package:flutter/material.dart';

class RowInfo extends StatelessWidget {
  final Widget? firstChild;
  final Widget? secandChild;

  const RowInfo({
    super.key,
    this.firstChild,
    this.secandChild,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color(0xff24263B).withOpacity(0.9),
                ),
                child: firstChild,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color(0xff24263B).withOpacity(0.9),
                ),
                child: secandChild,
              ),
            )
          ],
        ),
      ),
    );
  }
}
