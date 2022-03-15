import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color bgcolor;
  final Widget? cardChild;
  final VoidCallback? onPress;

  const ReusableCard({required this.bgcolor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(15.0),
      ),
    );
  }
}
