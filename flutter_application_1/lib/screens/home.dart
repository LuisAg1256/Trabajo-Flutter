import 'package:flutter/material.dart';

import 'imagenes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final accentColor = theme.colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hola a todos, este es mi home',
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text('¡Bienvenido!', style: theme.textTheme.titleMedium),
            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _HomeIcon(icon: Icons.home, color: accentColor),
                    _HomeIcon(icon: Icons.favorite, color: accentColor),
                    _HomeIcon(icon: Icons.settings, color: accentColor),
                    _HomeIcon(icon: Icons.person, color: accentColor),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 28),
            Text(
              'Accesos rápidos',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Imagenes()),
                    );
                  },
                  child: const Text('Imagenes'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/buttons');
                  },
                  child: const Text('Botones'),
                ),
              ],
            ),
            const SizedBox(height: 28),
            Text(
              'Galería',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _GalleryImage(
                    url: 'https://images.unsplash.com/photo-1470252649378-9c29740c9fa8?auto=format&fit=crop&w=400&q=80',
                  ),
                  _GalleryImage(
                    url: 'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?auto=format&fit=crop&w=400&q=80',
                  ),
                  _GalleryImage(
                    url: 'https://images.unsplash.com/photo-1472396961693-142e6e269027?auto=format&fit=crop&w=400&q=80',
                  ),
                  _GalleryImage(
                    url: 'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?auto=format&fit=crop&w=400&q=80',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 28),
            Text(
              'Imágenes destacadas',
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                'assets/images.jpg',
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),
            _FeaturedNetworkImage(
              url: 'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=800&q=80',
            ),
            const SizedBox(height: 12),
            _FeaturedNetworkImage(
              url: 'https://images.unsplash.com/photo-1470770841072-f978cf4d019e?auto=format&fit=crop&w=800&q=80',
            ),
            const SizedBox(height: 12),
            _FeaturedNetworkImage(
              url: 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeIcon extends StatelessWidget {
  const _HomeIcon({required this.icon, required this.color});

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Icon(icon, size: 36, color: color);
  }
}

class _GalleryImage extends StatelessWidget {
  const _GalleryImage({required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image.network(url, width: 270, height: 190, fit: BoxFit.cover),
      ),
    );
  }
}

class _FeaturedNetworkImage extends StatelessWidget {
  const _FeaturedNetworkImage({required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Image.network(
        url,
        width: double.infinity,
        height: 220,
        fit: BoxFit.cover,
      ),
    );
  }
}
