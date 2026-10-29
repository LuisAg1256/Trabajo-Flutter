import 'package:flutter/material.dart';

import 'screen2.dart'; // Importa la pantalla 2

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Color.fromARGB(255, 147, 4, 5)),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hola a todos este es mi home',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              Text('Bienvenido', style: TextStyle(fontSize: 16)),
              SizedBox(height: 20),
              Text('Hola'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    size: 50,
                    color: Color.fromARGB(255, 147, 4, 5),
                  ),
                  Icon(
                    Icons.favorite,
                    size: 50,
                    color: Color.fromARGB(255, 147, 4, 5),
                  ),
                  Icon(
                    Icons.settings,
                    size: 50,
                    color: Color.fromARGB(255, 147, 4, 5),
                  ),
                  Icon(
                    Icons.person,
                    size: 50,
                    color: Color.fromARGB(255, 147, 4, 5),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Screen2()),
                  );
                },
                child: Text('Ventana 2'),
              ),
              Text('You clicked the button!'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/screen2');
                },
                child: Text('Ventana 2 de 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/buttons');
                },
                child: Text('Botones'),
              ),
              // Imagenes de forma horizontal
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.network(
                      'https://images.unsplash.com/photo-1470252649378-9c29740c9fa8?auto=format&fit=crop&w=400&q=80',
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 8),
                    Image.network(
                      'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?auto=format&fit=crop&w=400&q=80',
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 8),
                    Image.network(
                      'https://images.unsplash.com/photo-1472396961693-142e6e269027?auto=format&fit=crop&w=400&q=80',
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 8),
                    Image.network(
                      'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?auto=format&fit=crop&w=400&q=80',
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Image(
                image: AssetImage('assets/images.jpg'),
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=500&q=80',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1470770841072-f978cf4d019e?auto=format&fit=crop&w=500&q=80',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=500&q=80',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
