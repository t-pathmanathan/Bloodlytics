import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloodlytics/features/dashboard/widgets/key_biomarkers_section.dart';
import 'package:bloodlytics/features/dashboard/widgets/biomarker_summary_card.dart';

void main() {
  testWidgets('KeyBiomarkersSection displays key biomarkers', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(child: KeyBiomarkersSection()),
        ),
      ),
    );

    expect(find.text('Key Biomarkers'), findsOneWidget);

    expect(find.byType(BiomarkerSummaryCard), findsNWidgets(3));

    expect(find.text('LDL Cholesterol'), findsOneWidget);
    expect(find.text('2.8'), findsOneWidget);
    expect(find.text('↓ 0.3 from previous report'), findsOneWidget);

    expect(find.text('HDL Cholesterol'), findsOneWidget);
    expect(find.text('1.4'), findsOneWidget);
    expect(find.text('↑ 0.1 from previous report'), findsOneWidget);

    expect(find.text('HbA1c'), findsOneWidget);
    expect(find.text('5.4'), findsOneWidget);
    expect(find.text('%'), findsOneWidget);
    expect(find.text('→ No significant change'), findsOneWidget);

    expect(find.text('mmol/L'), findsNWidgets(2));
    expect(find.byType(TextButton), findsNWidgets(3));
  });
}
