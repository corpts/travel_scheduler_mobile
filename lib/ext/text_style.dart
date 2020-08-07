import 'package:flutter/material.dart';

import 'package:travel_scheduler/ext/color.dart' as ext;

class TextStyleLib{

  //TS = text style

  static final TextStyle inputHintTS = TextStyle(
  fontSize: 22,
  color: ext.ColorProvider.blackDark,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w300
  );

  static final TextStyle hintTS = TextStyle(
    fontSize: 14,
    color: ext.ColorProvider.redLight,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  static final TextStyle inputTextTs = TextStyle(
    fontSize: 22,
    color: ext.ColorProvider.blackDark,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  static final TextStyle header1TS = TextStyle(
    fontSize: 52,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  static final TextStyle header2TS = TextStyle(
    fontSize: 28,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400
  );

  static final TextStyle buttonBlackTS = TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w300,
      color: ext.ColorProvider.blackPrimary,
      fontSize: 14.0
  );

  static final TextStyle buttonWhiteTS = TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w300,
      color: ext.ColorProvider.whitePrimary,
      fontSize: 14.0
  );

  static final TextStyle singUpButtonTS = TextStyle(
    color: ext.ColorProvider.redPrimary,
    fontSize: 26,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );
}