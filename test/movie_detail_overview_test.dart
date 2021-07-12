import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget _buildWidget() {
    return MaterialApp(
      home: Scaffold(
        body: MovieDetailOverview(
          overview:
              "Luca and his best friend Alberto experience an unforgettable summer on the Italian Riviera. But all the fun is threatened by a deeply-helped secret: they are sea monsters from another world just below the water's a surface.",
        ),
      ),
    );
  }

  testWidgets(
    "It should be generated a MovieDetailOverview widget",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        _buildWidget(),
      );
      expect(
        find.text(
          "Luca and his best friend Alberto experience an unforgettable summer on the Italian Riviera. But all the fun is threatened by a deeply-helped secret: they are sea monsters from another world just below the water's a surface.",
        ),
        findsOneWidget,
      );
    },
  );
}
