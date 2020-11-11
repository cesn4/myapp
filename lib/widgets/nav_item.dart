import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/theme/duration.dart';
import 'package:myapp/theme/spacing.dart';

class NavItem extends StatefulWidget {
  final String title;
  final Function onPressed;

  NavItem({@required this.title, @required this.onPressed});

  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
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
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: ThemeDuration.classic,
          padding: EdgeInsets.all(ThemeSpacing.small),
          child: RotatedBox(
            child: Text(
              widget.title,
              style: TextStyle(
                color: _hovering ? ThemeColor.light : ThemeColor.pseudoLight,
                fontSize: 15.0,
              ),
            ),
            quarterTurns: 1,
          ),
        ),
      ),
    );
  }
}
