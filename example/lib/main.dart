import 'package:flutter/material.dart';
import 'src/home.dart';
import 'src/widget_page.dart';
import 'utils/routes_constants.dart';
import 'utils/strings_constants.dart';
import 'package:widgets/widgets.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RoutesConstants.initialRoute,
      routes: <String, WidgetBuilder>{
        RoutesConstants.initialRoute: (context) => Home(),
        RoutesConstants.titleRoute: (context) => WidgetPage(
              MovieDetailTitle(
                title: StringsConstants.titleDefault,
              ),
              StringsConstants.titleTitleScreen,
              StringsConstants.titleScreen,
            ),
        RoutesConstants.imageRoute: (context) => WidgetPage(
              MovieDetailImage(
                posterPath: StringsConstants.imagePosterPathDefault,
              ),
              StringsConstants.imageTitleScreen,
              StringsConstants.imageScreen,
            ),
        RoutesConstants.informationRoute: (context) => WidgetPage(
              MovieDetailInformation(
                date: StringsConstants.informationDateDefault,
                rating: StringsConstants.informationRatingDefault,
              ),
              StringsConstants.informationTitleScreen,
              StringsConstants.informationScreen,
            ),
        RoutesConstants.overviewRoute: (context) => WidgetPage(
              MovieDetailOverview(
                overview: StringsConstants.overviewDefault,
              ),
              StringsConstants.overviewTitleScreen,
              StringsConstants.overviewScreen,
            ),
        RoutesConstants.buttonRoute: (context) => WidgetPage(
              MovieDetailButton(),
              StringsConstants.buttonTitleScreen,
              StringsConstants.buttonScreen,
            ),
      },
    );
  }
}
