import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tusorpresa_landing/main.dart';

void main() {
  testWidgets('Carga landing correctamente', (WidgetTester tester) async {
    await tester.pumpWidget(const TuSorpresaApp());

    expect(find.text('🎁 Bienvenido a TuSorpresa'), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.textContaining('construcción'), findsOneWidget);
  });
}
