import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:bloodlytics/features/dashboard/presentation/dashboard_screen.dart';

void main() {
  testWidgets('Dashboard displays greeting header', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: DashboardScreen()));

    expect(find.text('Hello, Thilochan'), findsOneWidget);
    expect(find.text("Here's your health overview."), findsOneWidget);
  });
}
