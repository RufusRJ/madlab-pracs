import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:task_9/main.dart';

void main() {
  testWidgets('Hello text is present', (WidgetTester tester) async {
    // Step 3: pumpWidget a MaterialApp containing Text('Hello')
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello'))),
    ));

    // Step 4: verify the text
    expect(find.text('Hello'), findsOneWidget);
  });
}
