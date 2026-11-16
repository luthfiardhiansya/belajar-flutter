// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lutfi/main.dart';

void main() {
  testWidgets('menu utama tampil dan halaman about dapat dibuka', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Widget Laboratory'), findsOneWidget);
    expect(find.text('Latihan Kelompok'), findsOneWidget);
    expect(find.text('SizedBox & Stack'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.arrow_forward_rounded));
    await tester.pumpAndSettle();

    expect(find.text('Halaman About'), findsOneWidget);
    expect(find.text('Nama Lengkap: Ambatukam'), findsOneWidget);
  });
}
