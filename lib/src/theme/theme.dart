import 'package:boilerplate/src/helpers/helpers.dart';
import 'package:boilerplate/src/theme/default_text_theme.dart';
import 'package:boilerplate/src/theme/styles/base_colors.dart';
import 'package:boilerplate/src/theme/styles/dark_colors.dart';
import 'package:boilerplate/src/theme/styles/light_colors.dart';

import 'package:flutter/material.dart';

ThemeData theme(BaseColors? colors) {
  final textTheme = getAppTextTheme(
    TextStyle(fontFamily: 'Roboto', color: colors!.accent),
    defaultTextTheme,
  );

  return ThemeData(
    scaffoldBackgroundColor: colors.scaffoldBgColor,
    textTheme: textTheme,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation:
            MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return 0;
          } else {
            return 5;
          }
        }),
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return colors.secondary.withOpacity(.5);
          } else {
            return colors.secondary;
          }
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return colors.scaffoldBgColor.withOpacity(.5);
          } else {
            return colors.scaffoldBgColor;
          }
        }),
        textStyle: MaterialStateProperty.resolveWith<TextStyle>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return textTheme.subtitle1!.copyWith(
              fontFamily: 'visby',
              fontWeight: FontWeight.w700,
            );
          } else {
            return textTheme.subtitle1!.copyWith(
              fontFamily: 'visby',
              fontWeight: FontWeight.w700,
            );
          }
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    ),
  );
}

class BaseThemeConfig {
  const BaseThemeConfig(
    this.theme,
    this.brightness,
    this.colors,
  );

  final ThemeData? theme;
  final Brightness? brightness;
  final BaseColors? colors;
}

final lightColors = LightColors();
final darkColors = DarkColors();

BaseThemeConfig get light =>
    BaseThemeConfig(theme(lightColors), Brightness.light, lightColors);

BaseThemeConfig get dark =>
    BaseThemeConfig(theme(darkColors), Brightness.dark, darkColors);
