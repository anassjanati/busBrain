import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:first_code/main.dart'; // Ensure this path is correct and 'main.dart' contains MyApp

void main() {
  testWidgets('Sign in screen test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp()); // Corrected to MyApp

    // Verify that the important widgets are present.
    expect(find.text('Bus Management'), findsOneWidget);
    expect(find.byType(TextFormField),
        findsNWidgets(2)); // There should be two TextFormFields.
    expect(find.text('Sign in'), findsOneWidget);

    // Tap the 'Sign in' button and trigger a frame.
    await tester.tap(find.text('Sign in'));
    await tester.pump();

    // Add further tests here to check after sign in button is pressed.
    // For example, you might want to check if a loading indicator appears, etc.
  });
}
