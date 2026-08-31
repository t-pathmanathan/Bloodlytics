import 'package:flutter_test/flutter_test.dart';

import 'package:bloodlytics/app.dart';

void main() {
  testWidgets('Bloodlytics app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const BloodlyticsApp());

    expect(find.text('Dashboard'), findsOneWidget);
    expect(find.text('Trends'), findsOneWidget);
    expect(find.text('Reports'), findsOneWidget);
    expect(find.text('Insights'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });
}
