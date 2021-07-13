import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  Widget _buildWidget() {
    return MaterialApp(
      home: MovieDetailPage(
        movieTitle: "Luca",
        moviePosterPath:
            "https://image.tmdb.org/t/p/w185/jTswp6KyDYKtvC52GbHagrZbGvD.jpg",
        movieReleaseDate: "2021-06-17",
        movieVoteAverage: "8.2",
        movieOverview:
            "Luca and his best friend Alberto experience an unforgettable summer on the Italian Riviera. But all the fun is threatened by a deeply-helped secret: they are sea monsters from another world just below the water's a surface.",
      ),
    );
  }

  testWidgets(
    "It should be generated a MovieDetail widget",
    (WidgetTester tester) async {
      await mockNetworkImagesFor(
        () => tester.pumpWidget(
          _buildWidget(),
        ),
      );
      expect(
        find.descendant(
          of: find.byType(
            Scaffold,
          ),
          matching: find.byType(
            MovieDetailButton,
          ),
        ),
        findsOneWidget,
      );
      expect(
        find.descendant(
          of: find.byType(
            Scaffold,
          ),
          matching: find.byType(
            MovieDetailImage,
          ),
        ),
        findsOneWidget,
      );
      expect(
        find.descendant(
          of: find.byType(
            Scaffold,
          ),
          matching: find.byType(
            MovieDetailInformation,
          ),
        ),
        findsOneWidget,
      );
      expect(
        find.descendant(
          of: find.byType(
            Scaffold,
          ),
          matching: find.byType(
            MovieDetailOverview,
          ),
        ),
        findsOneWidget,
      );
      expect(
        find.descendant(
          of: find.byType(
            Scaffold,
          ),
          matching: find.byType(
            MovieDetailTitle,
          ),
        ),
        findsOneWidget,
      );
    },
  );
}
