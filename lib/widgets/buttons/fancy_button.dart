import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';

class FancyButton extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final Function onPressed;
  final double iconSize;
  const FancyButton(
      {Key key,
      @required this.icon,
      @required this.isActive,
      @required this.onPressed,
      @required this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: isActive ? EdgeInsets.all(10.0) : EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isActive ? ThemeColor.pseudoLight : ThemeColor.transparent,
         ),
      duration: Duration(seconds: 1),
      child: IconButton(
          color: isActive ? ThemeColor.dark : ThemeColor.light,
          iconSize: iconSize,
          icon: Icon(
            icon,
            // color: widget.activeButton != 0 ? ThemeColor.light : ThemeColor.transparent,
          ),
          onPressed: onPressed),
    );
  }
}
