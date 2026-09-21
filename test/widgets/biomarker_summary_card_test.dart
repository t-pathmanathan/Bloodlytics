import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloodlytics/features/dashboard/widgets/biomarker_summary_card.dart';

void main() {
  testWidgets('BiomarkerSummaryCard displays biomarker information', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: BiomarkerSummaryCard(
            name: 'LDL Cholesterol',
            value: '2.8',
            unit: 'mmol/L',
            change: '↓ 0.3 from previous report',
            status: 'Within reference range',
            statusColor: Color(0xFF16A34A),
          ),
        ),
      ),
    );

    expect(find.text('LDL Cholesterol'), findsOneWidget);
    expect(find.text('2.8'), findsOneWidget);
    expect(find.text('mmol/L'), findsOneWidget);
    expect(find.text('↓ 0.3 from previous report'), findsOneWidget);
    expect(find.text('Within reference range'), findsOneWidget);

    expect(find.byIcon(Icons.chevron_right), findsOneWidget);

    expect(find.text('View Trend'), findsOneWidget);
    expect(find.byIcon(Icons.arrow_forward), findsOneWidget);
    expect(find.byType(TextButton), findsOneWidget);
  });
}
