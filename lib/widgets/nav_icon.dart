import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/theme/colors.dart';

class NavIcon extends StatefulWidget {
  final Function onPressed;

  NavIcon({@required this.onPressed});

  @override
  _NavIconState createState() => _NavIconState();
}

class _NavIconState extends State<NavIcon> {
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
          duration: const Duration(milliseconds: 200),
          padding: EdgeInsets.all(10.0),
          child: Icon(
            Icons.blur_circular,
            color: _hovering ? ThemeColor.light : Colors.white.withOpacity(0.8),
            size: 30.0,
          ),
        ),
      ),
    );
  }
}
