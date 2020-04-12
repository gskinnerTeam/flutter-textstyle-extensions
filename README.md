# textstyle_extensions

Syntactic sugar for easily modifying TextStyles:
```dart
// Do this:
myTextStyle.bold.italic.size(16).ltrSpace(1.6)

//Instead of this:
myTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, letterSpacing: 1.6,)
```

## 🔨 Installation
```yaml
dependencies:
  textstyle_extensions: ^0.0.1
```

### ⚙ Import

```dart
import 'package:textstyle_extensions/textstyle_extensions.dart';
```

## 🕹️ Usage


The entire TextStyle API is represented:

<img src="https://i.imgur.com/jAhwBGX.png" alt="" />

```
Widget build(BuildContext context) {
    Text t(String v, TextStyle t) => Text(v, style: t);
    TextStyle style = TextStyle(fontSize: 12);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
```
Shortcut method names are introduced where it makes sense. This is done both for brevity, and to reduce conflicts with the underlying TextStyle properties.

## 🐞 Bugs/Requests

If you encounter any problems please open an issue. If you feel the library is missing a feature, please raise a ticket on Github and we'll look into it. Pull request are welcome.

## 📃 License

MIT License


