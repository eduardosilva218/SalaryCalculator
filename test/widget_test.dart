import 'package:flutter_test/flutter_test.dart';
import 'package:salary_calculator/SalaryCalculatorApp.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(SalaryCalculatorApp());
  });
}
