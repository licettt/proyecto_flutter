import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:proyecto_flutter/main.dart';

void main() {
  testWidgets('smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(new MyApp());
    expect(find.text('Free - Mr. Big - Live at Granada Studios 1970'), findsOneWidget);
  });
}
