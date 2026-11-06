// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('La pantalla de columnas muestra sus elementos', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Componentes de columnas'));
    await tester.pumpAndSettle();

    expect(find.text('Uso de Column'), findsOneWidget);
    expect(find.text('Primer elemento'), findsOneWidget);
    expect(find.text('Tercer elemento'), findsOneWidget);
  });

  testWidgets('La pantalla de filas muestra sus ejemplos', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Componentes de Filas'));
    await tester.pumpAndSettle();

    expect(find.text('Uso de Row'), findsOneWidget);
    expect(find.text('Primera fila'), findsOneWidget);
    expect(find.text('Tercera fila'), findsOneWidget);
  });

  testWidgets('La pantalla de imágenes muestra ambos carruseles', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Componentes de imagenes'));
    await tester.pumpAndSettle();

    expect(find.text('Explora nuestra galería'), findsOneWidget);
    expect(find.text('Carrusel horizontal'), findsOneWidget);
    expect(find.text('Galería vertical'), findsOneWidget);
  });
}
