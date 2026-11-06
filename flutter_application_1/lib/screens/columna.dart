import 'package:flutter/material.dart';

class Columna extends StatelessWidget {
  const Columna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Columna'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(color: Colors.red, width: 100, height: 100),
          Container(color: Colors.green, width: 100, height: 100),
          Container(color: Colors.blue, width: 100, height: 100),
        ],
      ),
    );
  }
}
