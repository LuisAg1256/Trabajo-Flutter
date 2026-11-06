import 'package:flutter/material.dart';

import 'columna.dart';
import 'filas.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Go to Home'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text('Componentes de imagenes'),
              trailing: const Icon(Icons.chevron_right_rounded),
              onTap: () {
                Navigator.pushNamed(context, '/imagenes');
              },
            ),
            ListTile(
              leading: const Icon(Icons.tab),
              title: const Text('Componentes de columnas'),
              trailing: const Icon(Icons.chevron_right_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Columna()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.table_rows),
              title: const Text('Componentes de Filas'),
              trailing: const Icon(Icons.chevron_right_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Filas()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text('Visualización de datos'),
              trailing: const Icon(Icons.chevron_right_rounded),
              onTap: () {
                Navigator.pushNamed(context, '/visualizacion_datos');
              },
            ),
          ],
        ),
      ),
    );
  }
}
