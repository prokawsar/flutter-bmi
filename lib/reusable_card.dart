import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color bgcolor;
  final Widget? cardChild;

  const ReusableCard({required this.bgcolor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(15.0),
    );
  }
}
