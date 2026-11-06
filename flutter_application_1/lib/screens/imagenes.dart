import 'package:flutter/material.dart';

class Imagenes extends StatelessWidget {
  const Imagenes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Imágenes'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Componentes de imágenes',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              Image.asset(
                'assets/imagen11.jpg',
                width: 280,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Volver'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
