import 'package:flutter/material.dart';

mixin Const {
  static const appName = 'DexterCare';
  static const appDescription = 'A Todo Flutter mobile application for nurses.';
  static const packageName = 'com.dexterhealth.dextercare';
  static const minSDKVersion = '26';
  //
  static const buttonRadius = 16.0;
  static const buttonBorderRadius = BorderRadius.all(Radius.circular(buttonRadius));
  static const cardBorderRadius = BorderRadius.all(Radius.circular(cardRadius));
  static const cardRadius = 8.0;
  static const chipRadius = 20.0;
  static const chipBorderRadius = BorderRadius.all(Radius.circular(chipRadius));
  static const inputPadding = EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0);
  static const inputBorderRadius = 12.0;
  static const fontFamily = 'Nunito';
}
