import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  Widget _buildWidget() {
    return MaterialApp(
      home: Scaffold(
        body: MovieDetailImage(
          posterPath:
              "https://image.tmdb.org/t/p/w185/jTswp6KyDYKtvC52GbHagrZbGvD.jpg",
        ),
      ),
    );
  }

  testWidgets(
    "It should be generated a MovieDetailImage widget",
    (WidgetTester tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          _buildWidget(),
        ),
      );
      expect(
        find.byType(
          FadeInImage,
        ),
        findsOneWidget,
      );
    },
  );
}
