import 'package:flutter_test/flutter_test.dart';
import 'package:task_9/main.dart';

void main() {
  testWidgets('Hello text is present', (WidgetTester tester) async {
    // Use the real app widget from lib/main.dart so the import is used
    await tester.pumpWidget(const Task9App());

    // Step 4: verify the text
    expect(find.text('Hello'), findsOneWidget);
  });
}
