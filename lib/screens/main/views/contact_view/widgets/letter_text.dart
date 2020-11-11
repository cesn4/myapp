import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/theme/font.dart';

class LetterText extends StatelessWidget {
  final String text;
  const LetterText({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: ThemeFontSize.medium,
          fontWeight: FontWeight.w800,
          color: ThemeColor.light.withOpacity(0.8)),
    );
  }
}