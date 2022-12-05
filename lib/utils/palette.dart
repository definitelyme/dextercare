import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:dextercare/utils/utils.dart';

mixin Palette {
  static Color fromHex(String hex) {
    if (!hex.startsWith('#')) hex = '#$hex';
    return Color(int.parse(hex.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static Color get random => Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);

  static String stringHex(
    Color color, {
    bool withAlpha = true,
    bool appendHash = false,
  }) {
    var value = color.toString().split('(0x')[1].split(')')[0];

    if (!withAlpha) value = value.length > 6 ? value.replaceRange(0, 2, '') : value;
    if (appendHash) value = '#$value';
    return value;
  }

  static Color getShade(Color color, {bool darker = false, double value = .1}) {
    assert(value >= 0 && value <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((darker ? (hsl.lightness - value) : (hsl.lightness + value)).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  // App Colors
  static const _backgroundLight = 0xffF9F9F9;
  static const _backgroundDark = 0xff141625;
  static const _primaryColor = 0xff3c40c2;
  static const _primaryColorDark = 0xff7c5dfa;
  static const _secondaryColor = 0xff373b54;

  static const MaterialColor backgroundColorLight = MaterialColor(
    _backgroundLight,
    <int, Color>{
      50: Color(0xFFf2f2f2),
      100: Color(0xFFefefef),
      200: Color(0xFFededed),
      300: Color(0xFFeaeaea),
      400: Color(0xFFe8e8e8),
      500: Color(_backgroundLight),
      600: Color(0xFFcecece),
      700: Color(0xFFb7b7b7),
      800: Color(0xFFa0a0a0),
      900: Color(0xFF898989),
    },
  );

  static const MaterialColor backgroundColorDark = MaterialColor(
    _backgroundDark,
    <int, Color>{
      50: Color(0xFF8a8b92),
      100: Color(0xFF72737c),
      200: Color(0xFF5b5c66),
      300: Color(0xFF434551),
      400: Color(0xFF2c2d3b),
      500: Color(_backgroundDark),
      600: Color(0xFF121421),
      700: Color(0xFF10121e),
      800: Color(0xFF0e0f1a),
      900: Color(0xFF0c0d16),
    },
  );

  static const MaterialColor primaryColor = MaterialColor(
    _primaryColor,
    <int, Color>{
      50: Color(0xFF9ea0e1),
      100: Color(0xFF8a8cda),
      200: Color(0xFF7779d4),
      300: Color(0xff6366ce),
      400: Color(0xFF5053c8),
      500: Color(_primaryColor),
      600: Color(0xFF363aaf),
      700: Color(0xFF30339b),
      800: Color(0xFF2a2d88),
      900: Color(0xFF242674),
    },
  );

  static const MaterialColor secondaryColor = MaterialColor(
    _secondaryColor,
    <int, Color>{
      50: Color(0xFF9b9daa),
      100: Color(0xFF878998),
      200: Color(0xFF737687),
      300: Color(0xFF5f6276),
      400: Color(0xFF4b4f65),
      500: Color(_secondaryColor),
      600: Color(0xFF32354c),
      700: Color(0xFF2c2f43),
      800: Color(0xFF27293b),
      900: Color(0xFF212332),
    },
  );

  static const Color primaryDark = Color(_primaryColorDark);
  // static const Color onPrimaryHover = Color(0xff9277ff);
  static const Color onPrimaryHover = Color(0xff9278ff);
  static const Color primaryVariantDark = Color(0xff7e88c3);
  //
  static const Color backgroundLight50 = Color(0xFFf2f2f2);
  static const Color onPrimaryLight = Colors.white;
  static const Color onPrimaryDark = Colors.black;
  static const Color onSecondaryLight = Colors.black;
  static const Color onSecondaryDark = Colors.black;
  static const Color onBackgroundLight = Colors.black;
  static const Color onBackgroundDark = Colors.white;
  static const Color onSurface100Light = Colors.black;
  static const Color onSurface100Dark = Colors.white;
  static const Color onSurfaceLight = Colors.black87;
  static const Color onSurfaceDark = Color.fromRGBO(255, 255, 255, 0.87);
  static const Color onErrorLight = Colors.white;
  static const Color onErrorDark = Colors.black;
  static const Color surfaceOverlayLight = Color.fromRGBO(33, 33, 33, 0.08);
  static const Color surfaceOverlayDark = Color(0xff979797);
  static const Color onSurface60Light = Color.fromRGBO(0, 0, 0, 0.6);
  static const Color onSurface60Dark = Color.fromRGBO(255, 255, 255, 0.6);
  static Color elevatedOverlay07Dark = const Color.fromRGBO(255, 255, 255, 0.07) + Palette.backgroundColorDark;
  static Color elevatedOverlay12Dark = const Color.fromRGBO(255, 255, 255, 0.12) + Palette.backgroundColorDark;
  static Color elevatedOverlay16Light = const Color(0xffeeeeee) + Palette.backgroundColorLight;
  static Color elevatedOverlay16Dark = const Color.fromRGBO(255, 255, 255, 0.15) + Palette.backgroundColorDark;
  static Color elevatedOverlayLight = Colors.white;
  // static const Color elevatedOverlayLight = Color(0xffDFe3FA);
  // static Color elevatedOverlayDark = const Color.fromRGBO(255, 255, 255, 0.16) + Palette.backgroundColorDark;
  // static const Color elevatedOverlayDark = Color(0xff1f213a);
  static const Color elevatedOverlayDark = Color(0xff1e2139);
  // static const Color elevatedOverlayDark = Color(0xff252945);
  //
  static const Color transparent = Colors.transparent;
  static const Color appBarLight = Color(0xFF1f213a);
  static const Color appBarDark = Color(0xFF1f213a);
  static const Color iconLight = Color(0xFF1e2139);
  static const Color iconDark = Color(0xFF888eb0);
  static const Color errorRedLight = Color(0xFFB00020);
  static const Color errorRedDark = Color(0xFFCF6679);
  static const Color destructiveRed = Color(0xFFec5757);
  static const Color destructiveRedHover = Color(0xFFff9796);
  static const Color inputBgColorLight = Color(0xfff8f8fb);
  static const Color inputBgColorDark = Color(0xff252945);

  // static const Color inputBorderColorLight = Color(0xffDCDCDC);
  static const Color inputBorderColorLight = inputBgColorLight;
  // static const Color inputBorderColorDark = Color(0xff222742) + Color(0xff1f213a);
  static const Color inputBorderColorDark = inputBgColorDark;

  static const Color disabledColorLight = Color(0xffe2e6f9);
  static const Color disabledColorDark = Color(0xff6e6e6e);

  static const Color successGreen = Color(0xFF4bb543);
  static const Color infoBlue = Color(0xff42a5f5);
  // static const Color disabledColorDark = Color(0xff707484);
  // static Color disabledColorDark = const Color(0xffe1e6f9) + Palette.backgroundColorDark;

  static const Color grey100 = Color(0xFFfafafa);
  static const Color grey200 = Color(0xFFf5f5f5);
  static const Color grey300 = Color(0xFFeeeeee);
  static const Color grey400 = Color(0xFFe0e0e0);
  static const Color grey500 = Color(0xFFbdbdbd);
  static const Color grey600 = Color(0xFF9e9e9e);
  static const Color grey700 = Color(0xFF757575);
  static const Color grey800 = Color(0xFF616161);
  static const Color grey900 = Color(0xFF424242);
  static const Color grey1Light = Color(0xff333333);
  static const Color grey1Dark = Color(0xff333333);
  static const Color grey2Light = Color(0xff4F4F4F);
  static const Color grey2Dark = Color(0xff4F4F4F);
  static const Color grey3Light = Color(0xff828282);
  static const Color grey3Dark = Color(0xff828282);
  static const Color grey4Light = Color(0xFF4F4F4F);
  static const Color grey4Dark = Color(0xFF4F4F4F);
  static const Color grey5Light = Color(0xffE0E0E0);
  static const Color grey5Dark = Color(0xffE0E0E0);
  static const Color grey6Light = backgroundLight50;
  static const Color grey6Dark = backgroundLight50;

  static Color get primary => Utils.foldTheme(light: () => primaryColor.shade500, dark: () => primaryColor.shade400);

  static Color get primaryVariant => Utils.foldTheme(light: () => primaryColor.shade400, dark: () => primaryVariantDark);

  static Color get secondary => Utils.foldTheme(light: () => secondaryColor.shade200, dark: () => secondaryColor.shade200);

  static Color get secondaryVariant => Utils.foldTheme(light: () => secondaryColor.shade900, dark: () => secondaryColor.shade200);

  static Color get background => Utils.foldTheme(light: () => backgroundColorLight, dark: () => backgroundColorDark);

  static Color get backgroundInverted => Utils.foldTheme(light: () => backgroundColorDark, dark: () => backgroundColorLight);

  static Color get surface => background;

  static Color get errorRed => Utils.foldTheme(light: () => errorRedLight, dark: () => errorRedDark);

  static Color get onPrimary => Utils.foldTheme(light: () => onPrimaryLight, dark: () => onPrimaryDark);

  static Color get onSecondary => Utils.foldTheme(light: () => onSecondaryLight, dark: () => onSecondaryDark);

  static Color get onBackground => Utils.foldTheme(light: () => onBackgroundLight, dark: () => onBackgroundDark);

  static Color get onSurface100 => Utils.foldTheme(light: () => onSurface100Light, dark: () => onSurface100Dark);

  // static Color get onSurface => Utils.foldTheme(light: () => onSurfaceLight, dark: () => onSurfaceDark);
  static Color get onSurface => Utils.foldTheme(light: () => onSurface100Light, dark: () => onSurfaceDark);

  static Color get onSurfaceInverted => Utils.foldTheme(light: () => onSurface100Dark, dark: () => onSurface100Light);

  static Color get onSurface60 => Utils.foldTheme(light: () => onSurface60Light, dark: () => onSurface60Dark);

  static Color get onError => Utils.foldTheme(light: () => onErrorLight, dark: () => onErrorDark);

  static Color get surfaceOverlay => Utils.foldTheme(light: () => surfaceOverlayLight, dark: () => surfaceOverlayDark);

  static Color get inputBgColor => Utils.foldTheme(light: () => inputBgColorLight, dark: () => inputBgColorDark)!;

  static Color get inputBorderColor => Utils.foldTheme(light: () => inputBorderColorLight, dark: () => inputBorderColorDark)!;

  static Color get inputBorderFocusedColor => primary;

  static Color get iconColor => Utils.foldTheme(light: () => iconLight, dark: () => iconDark);

  static Color get elevatedOverlay => Utils.foldTheme(light: () => elevatedOverlayLight, dark: () => elevatedOverlayDark)!;

  static Color get elevatedOverlay16 => Utils.foldTheme(light: () => elevatedOverlay16Light, dark: () => elevatedOverlay16Dark)!;

  static Color get disabledColor => Utils.foldTheme(light: () => disabledColorLight, dark: () => disabledColorDark);

  static Color get appBar => Utils.foldTheme(light: () => appBarLight, dark: () => appBarDark);

  static Color get grey1 => Utils.resolveColor(grey1Light, dark: grey1Dark)!;
  static Color get grey2 => Utils.resolveColor(grey2Light, dark: grey2Dark)!;
  static Color get grey3 => Utils.resolveColor(grey3Light, dark: grey3Dark)!;
  static Color get grey4 => Utils.resolveColor(grey4Light, dark: grey4Dark)!;
  static Color get grey5 => Utils.resolveColor(grey5Light, dark: grey5Dark)!;
  static Color get grey6 => Utils.resolveColor(grey6Light, dark: grey6Dark)!;
}
