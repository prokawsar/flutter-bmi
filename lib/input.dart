import 'package:flutter/material.dart';

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
                  child: ReusableCard(bgcolor: bgContainer),
                ),
                Expanded(
                  child: ReusableCard(bgcolor: Colors.white38),
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
                  child: ReusableCard(bgcolor: Colors.black12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color bgcolor;
  const ReusableCard({required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10.0),
      height: 200,
      width: 170,
    );
  }
}
