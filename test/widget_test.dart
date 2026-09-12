import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:fitness_app/main.dart';
import 'package:fitness_app/services/app_settings.dart';

void main() {
  testWidgets('The app starts on the home screen', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await AppSettings.instance.load();

    await tester.pumpWidget(const FitnessApp());
    await tester.pumpAndSettle();

    expect(find.text('Fit Buddy'), findsOneWidget);
  });
}