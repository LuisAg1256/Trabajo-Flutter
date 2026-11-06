import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Botones en Flutter'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ejemplos de botones',
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Explora distintos estilos de botones disponibles en Flutter.',
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            Text(
              'Botones básicos',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            _ButtonExample(
              title: 'Personalizado',
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Botón personalizado',
                    style: TextStyle(color: theme.colorScheme.onPrimary),
                  ),
                ),
              ),
            ),
            _ButtonExample(
              title: 'Elevado',
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Botón elevado'),
              ),
            ),
            _ButtonExample(
              title: 'Contorneado',
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Botón contorneado'),
              ),
            ),
            _ButtonExample(
              title: 'De texto',
              child: TextButton(
                onPressed: () {},
                child: const Text('Botón de texto'),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Botones con iconos',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),
            _ButtonExample(
              title: 'Texto e icono',
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.thumb_up),
                label: const Text('Me gusta'),
              ),
            ),
            _ButtonExample(
              title: 'Solo icono',
              child: IconButton(
                onPressed: () {},
                tooltip: 'Me gusta',
                icon: const Icon(Icons.thumb_up),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Volver'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ButtonExample extends StatelessWidget {
  const _ButtonExample({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
