import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Modelos/provider_product.dart';

class VisualizacionDatos extends StatefulWidget {
  const VisualizacionDatos({super.key});

  @override
  State<VisualizacionDatos> createState() => _VisualizacionDatosState();
}

class _VisualizacionDatosState extends State<VisualizacionDatos> {
  late final Future<List<ProviderProduct>> _products = readJsonData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Lectura de archivos JSON'),
      ),
      body: FutureBuilder<List<ProviderProduct>>(
        future: _products,
        builder: (context, data) {
          if (data.hasError) {
            return Center(child: Text('${data.error}'));
          }

          if (data.hasData) {
            final items = data.data!;
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final product = items[index];
                return Card(
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 80,
                          height: 60,
                          child: Image.network(
                            product.imageUrl ?? '',
                            fit: BoxFit.fill,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.image_not_supported),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 8,
                                  ),
                                  child: Text(
                                    product.name ?? 'Producto sin nombre',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 8,
                                  ),
                                  child: Text(
                                    'Categoría: ${product.category ?? 'Sin categoría'}',
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 8,
                                  ),
                                  child: Text(
                                    'Precio: €${product.price ?? '--'}'
                                    '${product.oldPrice == null ? '' : '  |  Antes: €${product.oldPrice}'}',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Future<List<ProviderProduct>> readJsonData() async {
    final jsonData = await rootBundle.loadString('data/productos.json');
    final list = json.decode(jsonData) as List<dynamic>;

    return list
        .map(
          (item) =>
              ProviderProduct.fromJson(Map<String, dynamic>.from(item as Map)),
        )
        .toList();
  }
}
