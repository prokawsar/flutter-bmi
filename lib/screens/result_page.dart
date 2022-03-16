import 'package:flutter/material.dart';
import 'package:flutter_bmi/bmi_brain.dart';
import 'package:flutter_bmi/components/bottom_button.dart';
import 'package:flutter_bmi/components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({required this.result});

  final BMIBrain result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('RESULT'),
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: const Text(
                'Your Result',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              bgcolor: Colors.white38,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text(
                      // 'NORMAL',
                      result.getResult().toUpperCase(),
                      style: TextStyle(
                        color: result.getResult() == 'Overweight'
                            ? Colors.red
                            : result.getResult() == 'Underweight'
                                ? Colors.limeAccent
                                : Colors.lightGreenAccent,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      // '18.5',
                      result.calculateBMI(),
                      style: const TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      result.getAdvice(),
                      // 'Some general advice according to you BMI result.',
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            text: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
