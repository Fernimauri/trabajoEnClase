import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int num = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$num',
              style:
                  const TextStyle(fontSize: 100, fontWeight: FontWeight.w100),
            ),
            const Text('CLICK',
                style: TextStyle(fontSize: 60, fontWeight: FontWeight.w100))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  num++;
                });
              },
              child: const Icon(Icons.plus_one)),
          const SizedBox(height: 18),
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  num--;
                });
              },
              child: const Icon(Icons.exposure_minus_1))
        ],
      ),
    );
  }
}
/*
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hola',
              style: TextStyle(fontSize: 130, fontWeight: FontWeight.w100),
            ),
            Text('Fernando Mauricio Rodriguez Cota',
                style: TextStyle(fontSize: 130, fontWeight: FontWeight.w100))
          ],
        ),
      ),
    );
  }
}
*/