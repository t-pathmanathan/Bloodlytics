import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloodlytics/features/dashboard/widgets/recent_insight_card.dart';

void main() {
  testWidgets('RecentInsightCard displays insight information', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: RecentInsightCard())),
    );

    expect(find.text('Recent Insight'), findsOneWidget);
    expect(find.text('LDL Cholesterol'), findsOneWidget);
    expect(
      find.text(
        'Your LDL cholesterol decreased compared with your previous laboratory report.',
      ),
      findsOneWidget,
    );
    expect(find.text('See More'), findsOneWidget);

    expect(find.byIcon(Icons.lightbulb_outline), findsOneWidget);
    expect(find.byType(TextButton), findsOneWidget);
  });
}
