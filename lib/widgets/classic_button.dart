import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/theme/colors.dart';

class ClassicButton extends StatefulWidget {
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
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
              color: _hovering ? ThemeColor.inactiveLight : ThemeColor.transparent,
              border: Border.all(color: Colors.white, width: 2.0)),
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          child: Text(
            'View Work',
            style: TextStyle(
              fontSize: 20,
              // color: _hovering ? ThemeColor.dark : ThemeColor.light,
              color: ThemeColor.light
            ),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
