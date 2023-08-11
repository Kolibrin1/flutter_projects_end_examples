import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_tests_example/calculator.dart';
import 'package:unit_tests_example/main.dart';
import 'package:unit_tests_example/operation.dart';
import 'package:unit_tests_example/operation_widget.dart';

void main() {
  late Calculator calculator;

  setUp(() {
    calculator = Calculator();
  });
  group('CalculatorApp', () {
    testWidgets('Render 4 widgets of Type ListTile', (tester) async {
      await tester.pumpWidget(const CalculatorApp());
      final listTileFinder = find.byType(ListTile);
      expect(listTileFinder, findsNWidgets(4));
    });
  });
  group('add', () {
    testWidgets('show result when gives two numbers', (tester) async {
      await tester.pumpWidget(const CalculatorApp());
      final topTextFieldFinder = find.byKey(const Key('textField_top_Adding'));
      final bottomTextFieldFinder =
          find.byKey(const Key('textField_bottom_Adding'));

      await tester.enterText(topTextFieldFinder, '3');
      await tester.enterText(bottomTextFieldFinder, '7');

      final textResultFinder = find.text('Result: 10.0');

      await tester.pump();
      // await tester.pumpAndSettle();  // для долгих анимаций и большого количества смены кадров

      expect(textResultFinder, findsOneWidget);
    });
  });

  group('Operation Widget', () {
    testWidgets('render 10 when 3 and 7 added', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body:
              OperationWidget(operation: Operation.add, calculator: calculator),
        ),
      ));
      await tester.enterText(
          find.byKey(const Key('textField_top_Adding')), '3');
      await tester.enterText(
          find.byKey(const Key('textField_bottom_Adding')), '7');

      await tester.pump();

      expect(find.text('Result: 10.0'), findsOneWidget);
    });
  });
}
