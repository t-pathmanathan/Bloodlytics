import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloodlytics/features/reports/widgets/upload_report_card.dart';

void main() {
  testWidgets('UploadReportCard displays upload information', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: UploadReportCard())),
    );

    expect(find.text('Upload Blood Report'), findsOneWidget);

    expect(
      find.text(
        'Upload a PDF of your laboratory results to extract '
        'and track your biomarkers over time.',
      ),
      findsOneWidget,
    );

    expect(find.text('Upload Report'), findsOneWidget);

    expect(find.byIcon(Icons.upload_file_outlined), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);

    expect(find.byType(FilledButton), findsOneWidget);
  });
}
