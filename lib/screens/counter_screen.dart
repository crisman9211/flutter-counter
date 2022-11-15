import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const fontSize = TextStyle(fontSize: 28);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Clicks Counter', style: fontSize),
            Text('$counter', style: fontSize),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1),
            onPressed: () {
              counter--;
              setState(() {});
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.refresh),
            onPressed: () {
              counter = 0;
              setState(() {});
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.plus_one),
            onPressed: () {
              counter++;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
