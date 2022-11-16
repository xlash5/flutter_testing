// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_testing/main.dart';
import '../lib/EmailFieldValidator.dart';
import '../lib/MyButton.dart';

void main() {
  test('emty email returns error string', () {
    var result = EmailFieldValidator.validate('');
    expect(result, 'Email can\'t be empty');
  });

  test('non-empty email returns null', () {
    var result = EmailFieldValidator.validate('email');
    expect(result, null);
  });

  test('test if normal email is valid', () {
    var result = EmailFieldValidator.validate('test@mail.com');
    expect(result, null);
  });

  Widget makeTestableWidget({Widget? child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('Login Screen appearance', (WidgetTester tester) async {
    await tester.pumpWidget(makeTestableWidget(child: MyApp()));

    expect(find.text('Enter your email'), findsOneWidget);
  });

  testWidgets('overflow', (WidgetTester tester) async {
    String generateVeryLongString() {
      String result = '';
      for (int i = 0; i < 100; i++) {
        result += 'very long string ';
      }
      return result;
    }

    await tester.pumpWidget(
      makeTestableWidget(
        child: MyButton(
          emailController: TextEditingController(),
          text: generateVeryLongString(),
        ),
      ),
    );
  });
}
