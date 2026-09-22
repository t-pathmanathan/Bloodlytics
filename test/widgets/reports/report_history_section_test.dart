import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloodlytics/features/reports/widgets/report_history_section.dart';
import 'package:bloodlytics/features/reports/widgets/report_list_item.dart';

void main() {
  testWidgets('ReportHistorySection displays recent reports', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: ReportHistorySection())),
    );

    expect(find.text('Recent Reports'), findsOneWidget);

    expect(find.byType(ReportListItem), findsNWidgets(3));

    expect(find.text('Complete Blood Count'), findsOneWidget);
    expect(find.text('LifeLabs'), findsNWidgets(3));
    expect(find.text('August 14, 2026'), findsOneWidget);

    expect(find.text('Metabolic Panel'), findsOneWidget);
    expect(find.text('June 2, 2026'), findsOneWidget);

    expect(find.text('Blood Work'), findsOneWidget);
    expect(find.text('March 19, 2026'), findsOneWidget);
  });
}
