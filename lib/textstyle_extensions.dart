library textstyle_extensions;

import 'dart:ui';
import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle clr(Color v) => copyWith(color: v);

  TextStyle bgClr(Color v) => copyWith(backgroundColor: v);

  TextStyle size(double v) => copyWith(fontSize: v);

  TextStyle w(FontWeight v) => copyWith(fontWeight: v);

  TextStyle get light => w(FontWeight.w200);

  TextStyle get regular => w(FontWeight.normal);

  TextStyle get semiBold => w(FontWeight.w500);

  TextStyle get bold => w(FontWeight.bold);

  TextStyle fs(FontStyle v) => copyWith(fontStyle: v);

  TextStyle get italic => fs(FontStyle.italic);

  TextStyle get normal => fs(FontStyle.normal);

  TextStyle ltrSpace(double v) => copyWith(letterSpacing: v);

  TextStyle wrdSpace(double v) => copyWith(wordSpacing: v);

  TextStyle bsl(TextBaseline v) => copyWith(textBaseline: v);

  TextStyle lnHeight(double v) => copyWith(height: v);

  TextStyle loc(Locale v) => copyWith(locale: v);

  TextStyle fg(Paint v) => copyWith(foreground: v);

  TextStyle bg(Paint v) => copyWith(background: v);

  TextStyle shdwList(List<Shadow> v) => copyWith(shadows: v);

  TextStyle ftList(List<FontFeature> v) => copyWith(fontFeatures: v);

  TextStyle dec(TextDecoration v, {Color color, TextDecorationStyle style, double thickness}) =>
      copyWith(decoration: v, decorationColor: color, decorationStyle: style, decorationThickness: thickness);

  TextStyle decClr(Color v) => copyWith(decorationColor: v);

  TextStyle decStyle(TextDecorationStyle v) => copyWith(decorationStyle: v);

  TextStyle decThick(double v) => copyWith(decorationThickness: v);
}
