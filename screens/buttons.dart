import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Buttons en Flutter',
          style: TextStyle(color: Color.fromARGB(255, 147, 4, 5)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.thumb_up),
              color: Colors.blue,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Botón Elevado'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Botón Contorneado'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
                  if (states.contains(WidgetState.hovered)) {
                    return Colors.black12;
                  }
                  return null;
                }),
              ),
              child: const Text('Botón de Texto'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
