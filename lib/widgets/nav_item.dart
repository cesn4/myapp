import 'package:flutter/material.dart';
import 'package:flutter_cursor/flutter_cursor.dart';

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
    return HoverCursor(
      cursor: Cursor.pointer,
      child: MouseRegion(
        onEnter: (e) => _mouseEnter(true),
        onExit: (e) => _mouseEnter(false),
        child: GestureDetector(
          onTap: widget.onPressed,
          child: RotatedBox(
            child: Text(
              'About',
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
            quarterTurns: 1,
          ),
        ),
      ),
    );
  }
}
