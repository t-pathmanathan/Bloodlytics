import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloodlytics/features/reports/widgets/report_list_item.dart';

void main() {
  testWidgets('ReportListItem displays report information', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: ReportListItem(
            title: 'Complete Blood Count',
            provider: 'LifeLabs',
            date: 'August 14, 2026',
          ),
        ),
      ),
    );

    expect(find.text('Complete Blood Count'), findsOneWidget);
    expect(find.text('LifeLabs'), findsOneWidget);
    expect(find.text('August 14, 2026'), findsOneWidget);

    expect(find.byIcon(Icons.description_outlined), findsOneWidget);
    expect(find.byIcon(Icons.chevron_right), findsOneWidget);
  });
}
