import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bloodlytics/features/dashboard/widgets/greetings_header.dart';

void main() {
  testWidgets('GreetingHeader displays greeting and subtitle', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: GreetingHeader())),
    );

    expect(find.text('Hello, Thilochan'), findsOneWidget);
    expect(find.text("Here's your health overview."), findsOneWidget);
  });
}
