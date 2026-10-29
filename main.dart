import 'package:flutter/material.dart';

import 'screens/home.dart'; //
import 'screens/screen2.dart';
import 'screens/buttons.dart';

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
      home: const Home(),
      routes: {
        '/home': (context) => const Home(),
        '/screen2': (context) => const Screen2(),
        '/buttons': (context) => const Buttons(),
      },
    );
  }
}
