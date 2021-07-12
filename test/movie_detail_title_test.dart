import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget _buildWidget() {
    return MaterialApp(
      home: Scaffold(
        body: MovieDetailTitle(
          title: "Luca",
        ),
      ),
    );
  }

  testWidgets(
    "It should be generated a MovieDetailTitle widget",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        _buildWidget(),
      );
      expect(
        find.text(
          "Luca",
        ),
        findsOneWidget,
      );
    },
  );
}
