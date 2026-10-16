import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intent/main.dart';

void main() {
  testWidgets('Splash screen pindah ke Menu Drawer',
      (WidgetTester tester) async {
    // Jalankan aplikasi
    await tester.pumpWidget(const intentprak());

    // Splash screen tampil dengan logo
    expect(find.byType(Image), findsOneWidget);

    // Tunggu 2 detik sesuai Future.delayed
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    // Sekarang halaman menu tampil
    expect(find.text('Menu Drawer'), findsOneWidget);
  });
}