import 'package:flutter/material.dart';
import '../utils/routes_constants.dart';
import '../utils/strings_constants.dart';
import '../utils/text_styles.dart';
import '../utils/constants.dart';
import 'widgets_route.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<WidgetsRoute> _routeList = [];

  void _generateRoutes() {
    _routeList.add(WidgetsRoute(
      widgetName: StringsConstants.titleScreen,
      route: RoutesConstants.titleRoute,
    ));
    _routeList.add(WidgetsRoute(
      widgetName: StringsConstants.imageScreen,
      route: RoutesConstants.imageRoute,
    ));
    _routeList.add(WidgetsRoute(
      widgetName: StringsConstants.informationScreen,
      route: RoutesConstants.informationRoute,
    ));
    _routeList.add(WidgetsRoute(
      widgetName: StringsConstants.overviewScreen,
      route: RoutesConstants.overviewRoute,
    ));
    _routeList.add(WidgetsRoute(
      widgetName: StringsConstants.buttonScreen,
      route: RoutesConstants.buttonRoute,
    ));
  }

  @override
  void initState() {
    super.initState();
    _generateRoutes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          StringsConstants.homeTitle,
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(
                Constants.padding,
              ),
              child: Text(
                StringsConstants.homeSubtitle,
                style: TextStyles.styleTitleHome,
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: _routeList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(
                      Constants.padding,
                    ),
                    child: _generateButtons(
                      _routeList[index].widgetName,
                      _routeList[index].route,
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }

  Widget _generateButtons(String widgetName, String route) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(
          route,
        );
      },
      child: Text(
        widgetName,
        style: TextStyles.styleButtonsHome,
      ),
    );
  }
}
