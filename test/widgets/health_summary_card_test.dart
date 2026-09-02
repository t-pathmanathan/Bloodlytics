import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloodlytics/features/dashboard/widgets/health_summary_card.dart';

void main() {
  testWidgets('HealthSummaryCard displays health summary information', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: HealthSummaryCard())),
    );

    expect(find.text('Health Overview'), findsOneWidget);
    expect(find.text('18'), findsOneWidget);
    expect(find.text('Within Range'), findsOneWidget);
    expect(find.text('4'), findsOneWidget);
    expect(find.text('Monitor'), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(find.text('Outside Range'), findsOneWidget);

    expect(find.byIcon(Icons.check_circle_outline), findsOneWidget);
    expect(find.byIcon(Icons.warning_amber_outlined), findsOneWidget);
    expect(find.byIcon(Icons.error_outline), findsOneWidget);
  });
}
