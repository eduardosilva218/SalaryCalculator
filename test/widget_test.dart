import 'package:flutter_test/flutter_test.dart';
import 'package:salary_calculator/app/salary_calculator_app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(SalaryCalculatorApp());
  });
}
