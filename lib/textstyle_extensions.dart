library textstyle_extensions;

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension TextStyleExtensions on TextStyle {
  /// Shortcut for light weight
  TextStyle get light => weight(FontWeight.w200);

  /// Shortcut for regular weight
  TextStyle get regular => weight(FontWeight.normal);

  /// Shortcut for semibold weight
  TextStyle get semiBold => weight(FontWeight.w500);

  /// Shortcut for bold weight
  TextStyle get bold => weight(FontWeight.bold);

  /// Shortcut for italic
  TextStyle get italic => style(FontStyle.italic);

  /// Shortcut for underline
  TextStyle get underline => textDecoration(TextDecoration.underline);

  /// Shortcut for linethrough
  TextStyle get lineThrough => textDecoration(TextDecoration.lineThrough);

  /// Shortcut for overline
  TextStyle get overline => textDecoration(TextDecoration.overline);

  /// Shortcut for color
  TextStyle textColor(Color v) => copyWith(color: v);

  /// Shortcut for backgroundColor
  TextStyle textBackgroundColor(Color v) => copyWith(backgroundColor: v);

  /// Shortcut for fontSize
  TextStyle size(double v) => copyWith(fontSize: v);

  /// Scales fontSize up or down
  TextStyle scale(double v) => copyWith(fontSize: fontSize * v);

  /// Shortcut for fontWeight
  TextStyle weight(FontWeight v) => copyWith(fontWeight: v);

  /// Shortcut for FontStyle
  TextStyle style(FontStyle v) => copyWith(fontStyle: v);

  /// Shortcut for letterSpacing
  TextStyle letterSpace(double v) => copyWith(letterSpacing: v);

  /// Shortcut for wordSpacing
  TextStyle wordSpace(double v) => copyWith(wordSpacing: v);

  /// Shortcut for textBaseline
  TextStyle baseline(TextBaseline v) => copyWith(textBaseline: v);

  /// Shortcut for height
  TextStyle textHeight(double v) => copyWith(height: v);

  /// Shortcut for locale
  TextStyle textLocale(Locale v) => copyWith(locale: v);

  /// Shortcut for foreground
  TextStyle textForeground(Paint v) => copyWith(foreground: v);

  /// Shortcut for background
  TextStyle textBackground(Paint v) => copyWith(background: v);

  /// Shortcut for shadows
  TextStyle textShadows(List<Shadow> v) => copyWith(shadows: v);

  /// Shortcut for fontFeatures
  TextStyle textFeatures(List<FontFeature> v) => copyWith(fontFeatures: v);

  /// Shortcut for decoration
  TextStyle textDecoration(TextDecoration v, {Color color, TextDecorationStyle style, double thickness}) =>
      copyWith(decoration: v, decorationColor: color, decorationStyle: style, decorationThickness: thickness);
}
