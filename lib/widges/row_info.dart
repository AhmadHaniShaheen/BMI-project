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
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.grey,
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
                  color: Colors.grey,
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
