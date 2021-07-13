import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget _buildWidget() {
    return MaterialApp(
      home: Scaffold(
        body: MovieDetailButton(),
      ),
    );
  }

  testWidgets(
    "It should be generated a MovieDetailButton widget",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        _buildWidget(),
      );
      expect(
        find.descendant(
          of: find.byType(
            ElevatedButton,
          ),
          matching: find.byType(
            Row,
          ),
        ),
        findsOneWidget,
      );
      expect(
        find.descendant(
          of: find.byType(
            Row,
          ),
          matching: find.byType(
            Icon,
          ),
        ),
        findsOneWidget,
      );
      expect(
        find.descendant(
          of: find.byType(
            Row,
          ),
          matching: find.text(
            "BACK",
          ),
        ),
        findsOneWidget,
      );
    },
  );
}
