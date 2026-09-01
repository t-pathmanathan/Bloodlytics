import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloodlytics/features/dashboard/widgets/latest_report_card.dart';

void main() {
  testWidgets('LatestReportCard displays report information', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: LatestReportCard())),
    );

    expect(find.text('Latest Lab Report'), findsOneWidget);
    expect(find.text('August 28, 2026'), findsOneWidget);
    expect(find.text('24 biomarkers analyzed'), findsOneWidget);
    expect(find.text('View Report'), findsOneWidget);
    expect(find.byType(OutlinedButton), findsOneWidget);
  });
}
