import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/theme/duration.dart';
import 'package:myapp/theme/font.dart';

class ClassicButton extends StatefulWidget {
  final String title;
  final void onPressed;

  ClassicButton({@required this.title, @required this.onPressed});

  @override
  _ClassicButtonState createState() => _ClassicButtonState();
}

class _ClassicButtonState extends State<ClassicButton> {
  bool _hovering = false;

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: FlatButton(
        child: AnimatedContainer(
          duration: ThemeDuration.classic,
          decoration: BoxDecoration(
              color:
                  _hovering ? ThemeColor.inactiveLight : ThemeColor.transparent,
              border: Border.all(color: ThemeColor.light, width: 2.0)),
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          child: Text(
            widget.title,
            style: TextStyle(
                fontSize: ThemeFontSize.small,
                // color: _hovering ? ThemeColor.dark : ThemeColor.light,
                color: ThemeColor.light),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
