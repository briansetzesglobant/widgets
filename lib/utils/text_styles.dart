import 'package:flutter/material.dart';
import 'constants.dart';

abstract class TextStyles {
  static const TextStyle styleButton = TextStyle(
    color: Colors.white,
    fontSize: Constants.textStyleButtonBackFontSize,
  );
  static const TextStyle styleInformation = TextStyle(
    color: Colors.amberAccent,
    fontSize: Constants.textStyleInformationFontSize,
  );
  static const TextStyle styleOverview = TextStyle(
    color: Colors.black,
    fontSize: Constants.textStyleOverviewFontSize,
  );
  static const TextStyle styleTitleDetails = TextStyle(
    color: Colors.amber,
    fontSize: Constants.textStyleTitleFontSize,
  );
}
