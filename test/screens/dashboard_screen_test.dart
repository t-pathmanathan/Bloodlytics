import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloodlytics/features/dashboard/presentation/dashboard_screen.dart';
import 'package:bloodlytics/features/dashboard/widgets/greetings_header.dart';
import 'package:bloodlytics/features/dashboard/widgets/latest_report_card.dart';
import 'package:bloodlytics/features/dashboard/widgets/health_summary_card.dart';

void main() {
  testWidgets('Dashboard displays its widgets', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: DashboardScreen()));

    expect(find.byType(GreetingHeader), findsOneWidget);
    expect(find.byType(LatestReportCard), findsOneWidget);
    expect(find.byType(HealthSummaryCard), findsOneWidget);
  });
}
