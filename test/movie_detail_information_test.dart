import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget _buildWidget() {
    return MaterialApp(
      home: Scaffold(
        body: MovieDetailInformation(
          date: "2021-06-17",
          rating: "8.2",
        ),
      ),
    );
  }

  testWidgets("It should be generated a MovieDetailInformation widget",
      (WidgetTester tester) async {
    await tester.pumpWidget(
      _buildWidget(),
    );
    expect(
      find.text(
        "Date: 2021-06-17",
      ),
      findsOneWidget,
    );
    expect(
      find.text(
        "Rating: 8.2",
      ),
      findsOneWidget,
    );
  });
}
