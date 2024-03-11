import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_application_main/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('App Test', () {
    testWidgets('My App Test', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      expect(find.text('Flutter'), findsOneWidget);
    });
  });
}
