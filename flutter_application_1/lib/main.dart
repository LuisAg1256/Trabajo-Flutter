import 'package:flutter/material.dart';

import 'screens/home.dart'; //
import 'screens/imagenes.dart';
import 'screens/buttons.dart';
import 'screens/home_screen.dart'; // Importa la pantalla HomeScreen
import 'screens/visualizacion_datos.dart';

// Importa la pantalla 2

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const Home(),
        '/imagenes': (context) => const Imagenes(),
        '/buttons': (context) => const Buttons(),
        '/visualizacion_datos': (context) => const VisualizacionDatos(),
        '/home_screen': (context) =>
            const HomeScreen(), // Agrega la ruta para HomeScreen
      },
    );
  }
}
