import 'package:flutter/material.dart';
import '../utils/routes_constants.dart';
import '../utils/strings_constants.dart';
import '../utils/text_styles.dart';
import '../utils/constants.dart';

class WidgetPage extends StatelessWidget {
  final Widget widget;
  final String title;
  final String subtitle;

  WidgetPage(
    this.widget,
    this.title,
    this.subtitle,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          title,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(
                Constants.padding,
              ),
              child: Text(
                subtitle,
                style: TextStyles.styleTitleHome,
              ),
            ),
            widget,
            Padding(
              padding: const EdgeInsets.all(
                Constants.padding,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    RoutesConstants.initialRoute,
                  );
                },
                child: Text(
                  StringsConstants.textBackScreen,
                  style: TextStyles.styleButtonsHome,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
