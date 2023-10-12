import 'package:aplicacionenclase/presentacion/components.dart';
import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});
//Comentario de prueba
  @override
  State<Counter> createState() => _CounterState();
}

// void SetEstado(int numAct, String clickAcy){
//   if (numAct > 1)
//   {
//     clickAcy = 'Clicks';
//   }else
//   if (numAct < 2)
//   {
//     clickAcy = 'Click';
//   }
// }

class _CounterState extends State<Counter> {
  int num = 0;
  String click = 'Click';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Counter'))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$num',
              style:
                  const TextStyle(fontSize: 100, fontWeight: FontWeight.w100),
            ),
            Text(click,
                style: const TextStyle(fontSize: 60, fontWeight: FontWeight.w100))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  num++;
                });
              }),
          const SizedBox(height: 18),
          CustomButton(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                setState(() {
                  if (num > 0) {
                    num--;
                  }
                  if (num < 2) {
                    click = 'Click';
                  }
                }
                );
              }
              ),
                const SizedBox(height: 18),
               CustomButton(
              icon: Icons.refresh_rounded,
              onPressed: () {
                setState(() {
                  num = 0;
                  click = 'Click';
                });
              }),
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
