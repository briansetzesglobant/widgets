import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import 'movie_detail_button.dart';
import 'movie_detail_image.dart';
import 'movie_detail_information.dart';
import 'movie_detail_overview.dart';
import 'movie_detail_title.dart';

class MovieDetail extends StatelessWidget {
  final String movieTitle;
  final String moviePosterPath;
  final String movieReleaseDate;
  final String movieVoteAverage;
  final String movieOverview;

  MovieDetail({
    required this.movieTitle,
    required this.movieOverview,
    required this.movieReleaseDate,
    required this.moviePosterPath,
    required this.movieVoteAverage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(
          Constants.paddingHomeDetails,
        ),
        child: MovieDetailButton(),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MovieDetailTitle(
                title: movieTitle,
              ),
              MovieDetailImage(
                posterPath: moviePosterPath,
              ),
              MovieDetailInformation(
                date: movieReleaseDate,
                rating: movieVoteAverage,
              ),
              MovieDetailOverview(
                overview: movieOverview,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
