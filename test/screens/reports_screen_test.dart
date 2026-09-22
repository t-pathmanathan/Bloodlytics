import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloodlytics/features/reports/presentation/reports_screen.dart';
import 'package:bloodlytics/features/reports/widgets/upload_report_card.dart';
import 'package:bloodlytics/features/reports/widgets/report_history_section.dart';

void main() {
  testWidgets('Reports displays its widgets', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ReportsScreen()));

    expect(
      find.descendant(of: find.byType(AppBar), matching: find.text('Reports')),
      findsOneWidget,
    );

    expect(find.byType(SingleChildScrollView), findsOneWidget);

    expect(find.text('Upload and manage your blood work'), findsOneWidget);

    expect(find.byType(UploadReportCard), findsOneWidget);
    expect(find.byType(ReportHistorySection), findsOneWidget);
  });
}
