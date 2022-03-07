import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

enum Gender { male, female }

class Input extends StatefulWidget {
  const Input({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  Color activeCard = const Color(0xFF916BBF);
  Gender? activeGender;
  double height = 150;
  int weight = 10;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        activeGender = Gender.male;
                      });
                    },
                    bgcolor:
                        activeGender == Gender.male ? activeCard : bgContainer,
                    cardChild: const IconContent(
                      iconName: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        activeGender = Gender.female;
                      });
                    },
                    bgcolor: activeGender == Gender.female
                        ? activeCard
                        : bgContainer,
                    cardChild: const IconContent(
                      iconName: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ReusableCard(
                    bgcolor: bgContainer,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'HEIGHT',
                          style: labelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: labelLargeTextStyle,
                            ),
                            const Text(
                              'cm',
                              style: labelTextStyle,
                            ),
                          ],
                        ),
                        Slider(
                          value: height,
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round() as double;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    bgcolor: bgContainer,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: labelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: labelLargeTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: Colors.indigo,
                              child: const Icon(FontAwesomeIcons.minus),
                              onPressed: () {},
                            ),
                            FloatingActionButton(
                              backgroundColor: Colors.indigo,
                              child: const Icon(FontAwesomeIcons.plus),
                              onPressed: () {},
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    bgcolor: bgContainer,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: labelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: labelLargeTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            RoundIconButton(icon: FontAwesomeIcons.minus),
                            RoundIconButton(icon: FontAwesomeIcons.plus)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;

  const RoundIconButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      onPressed: () {},
      child: Icon(
        icon,
        color: Colors.white,
      ),
      fillColor: Colors.indigo,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}
