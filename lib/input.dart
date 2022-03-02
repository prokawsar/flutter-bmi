import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bgContainer = Color(0xFF1D1E33);

class Input extends StatefulWidget {
  const Input({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
                    bgcolor: Colors.white38,
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
                  child: ReusableCard(bgcolor: Colors.white38),
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

class IconContent extends StatelessWidget {
  final IconData iconName;
  final String label;

  const IconContent({required this.iconName, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          color: Colors.white70,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(label)
      ],
    );
  }
}

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
