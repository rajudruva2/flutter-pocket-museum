import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_pocket_museum/main.dart';

void main() {
  testWidgets('shows the app title and sample entries', (WidgetTester tester) async {
    await tester.pumpWidget(const DemoApp());
    expect(find.text('Pocket Museum'), findsWidgets);
    expect(find.text('Ancient coin'), findsOneWidget);
  });
}
