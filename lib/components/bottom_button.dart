import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.onTap, @required this.text});

  final String? text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        height: 100,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        decoration: const BoxDecoration(color: Colors.white),
      ),
    );
  }
}
