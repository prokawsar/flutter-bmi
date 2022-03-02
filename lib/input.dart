import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const bgContainer = Color(0xFF1D1E33);

class Input extends StatefulWidget {
  const Input({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
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
              children: const [
                Expanded(
                  child: ReusableCard(
                    bgcolor: bgContainer,
                    cardChild: IconContent(
                      iconName: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    bgcolor: bgContainer,
                    cardChild: IconContent(
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
              children: const [
                Expanded(
                  child: ReusableCard(bgcolor: bgContainer),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(bgcolor: bgContainer),
                ),
                Expanded(
                  child: ReusableCard(bgcolor: bgContainer),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
