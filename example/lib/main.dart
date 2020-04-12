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
      home: Scaffold(body: Padding(
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
          t("Bold / Italic / Clr", style.bold.italic.clr(Colors.redAccent)),
          t("Weight", style.w(FontWeight.w100)),
          t("Line Height", style.lnHeight(2.5)),
          t("Word Spacing", style.wrdSpace(5)),
          t("Letter Spacing", style.ltrSpace(3)),
          t("Foreground Paint", style.fg(Paint()..color = Colors.orange)),
          t("Background Paint", style.bg(Paint()..color = Colors.orange)),
          t("Shadows", style.shdwList([Shadow(color: Colors.redAccent, blurRadius: 4)])),
          t(
            "Decoration",
            style.dec(TextDecoration.underline).decThick(4).decClr(Colors.red).decStyle(TextDecorationStyle.dashed),
          ),
          t(
            "Decoration2",
            style.dec(TextDecoration.underline, thickness: 4, color: Colors.red, style: TextDecorationStyle.dashed),
          ),
        ],
      ),
    );
  }
}
