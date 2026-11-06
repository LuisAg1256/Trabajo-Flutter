import 'package:flutter/material.dart';

class Filas extends StatelessWidget {
  const Filas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Filas'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text('Primera Fila'), Icon(Icons.star, size: 50)],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Segunda Fila'),
              Icon(Icons.favorite, size: 50),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Tercera Fila'),
              const Icon(Icons.thumb_up, size: 50),
            ],
          ),
        ],
      ),
    );
  }
}
