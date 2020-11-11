import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';

class LetterHint extends StatelessWidget {
  final String text;
  const LetterHint({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: ThemeColor.inactiveLight),
      ),
    );
  }
}
