import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/theme/duration.dart';
import 'package:myapp/theme/font.dart';
import 'package:myapp/theme/spacing.dart';

class CategoryItem extends StatelessWidget {
  final bool isActive;
  final String title;
  final bool isHorizontal;
  CategoryItem({
    @required this.title,
    @required this.isActive,
    @required this.isHorizontal,
  });
  @override
  Widget build(BuildContext context) {
    return isHorizontal
        ? Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AnimatedContainer(
                duration: ThemeDuration.classic,
                margin: EdgeInsets.only(
                    right: isActive
                        ? ThemeSpacing.medium / 2
                        : ThemeSpacing.large),
                color: ThemeColor.light,
                width: isActive ? 30 : 0,
                height: 1,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: ThemeFontSize.small,
                    color:
                        isActive ? ThemeColor.light : ThemeColor.inactiveLight),
              ),
            ],
          )
        : Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AnimatedContainer(
                duration: ThemeDuration.classic,
                margin: EdgeInsets.only(
                    bottom: isActive
                        ? ThemeSpacing.medium / 2
                        : ThemeSpacing.large),
                color: ThemeColor.light,
                height: isActive ? 30 : 0,
                width: 1,
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: ThemeFontSize.small,
                      color: isActive
                          ? ThemeColor.light
                          : ThemeColor.inactiveLight),
                ),
              ),
            ],
          );
  }
}
