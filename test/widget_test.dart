import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab2/main.dart';

void main() {
  testWidgets('renders the profile page', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Profile'), findsOneWidget);
    expect(find.text('Leo'), findsOneWidget);
    expect(find.text('Student'), findsOneWidget);
    expect(find.text('80'), findsOneWidget);
    expect(find.text('90'), findsOneWidget);
  });

  testWidgets('shows feedback when the menu is tapped', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byIcon(Icons.menu));
    await tester.pump();

    expect(find.text('Menu selected'), findsOneWidget);
  });
}
