import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/theme/font.dart';

class ProjectItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function onTap;
  final bool isMobile;
  ProjectItem(
      {@required this.title,
      @required this.isActive,
      @required this.onTap,
      @required this.isMobile});
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Text(
            title,
            textAlign: isMobile ? TextAlign.center : TextAlign.end,
            style: TextStyle(
                fontSize: isMobile? ThemeFontSize.large - 30.0 : ThemeFontSize.large - 10.0,
                fontWeight: FontWeight.w800,
                color: isActive ? ThemeColor.light : ThemeColor.inactiveLight),
          ),
        ),
      ),
    );
  }
}
