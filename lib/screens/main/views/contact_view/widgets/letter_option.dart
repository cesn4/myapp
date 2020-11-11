import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/theme/font.dart';

class LetterOption extends StatelessWidget {
  final String text;
  final bool active;
  const LetterOption({Key key, @required this.text, @required this.active}) : super(key: key);

  @override
  DropdownMenuItem<dynamic>  build(BuildContext context) {
    return DropdownMenuItem(
        value: text,
        child: Align(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: active ? ThemeFontSize.medium : ThemeFontSize.small,
                fontWeight: FontWeight.w800,
                color: ThemeColor.light),
          ),
        ));
  }
}