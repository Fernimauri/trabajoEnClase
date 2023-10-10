import 'package:aplicacionenclase/counter_screen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MayApp());
}

class MayApp extends StatelessWidget {
  const MayApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Counter(),
    );
  }
}
