import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:textstyle_extensions/textstyle_extensions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextExamples(),
      )),
    );
  }
}

class TextExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text t(String v, TextStyle t) => Text(v, style: t);
    TextStyle style = TextStyle(fontSize: 12);
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          t("Normal", style),
          t("Bigger", style.scale(1.1)),
          t("Smaller Bold / Italic / Clr", style.bold.italic.textColor(Colors.redAccent).size(10)),
          t("Weight", style.weight(FontWeight.w100)),
          t("Line Height", style.textHeight(2.5)),
          t("Word Spacing", style.wordSpace(5)),
          t("Letter Spacing", style.letterSpace(3)),
          t("Foreground Paint", style.textForeground(Paint()..color = Colors.orange)),
          t("Background Paint", style.textBackground(Paint()..color = Colors.orange)),
          t("Shadows", style.textShadows([Shadow(color: Colors.redAccent, blurRadius: 4)])),
          t(
            "Decoration",
            style.textDecoration(TextDecoration.underline,
                color: Colors.red, thickness: 4, style: TextDecorationStyle.dotted),
          ),
        ],
      ),
    );
  }
}
