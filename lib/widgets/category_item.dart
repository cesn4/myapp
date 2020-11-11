import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/theme/duration.dart';
import 'package:myapp/theme/font.dart';
import 'package:myapp/theme/spacing.dart';

class CategoryItem extends StatelessWidget {
  final bool isActive;
  final String title;
  CategoryItem({
    @required this.title,
    @required this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnimatedContainer(
          duration: ThemeDuration.classic,
          margin: EdgeInsets.only(
              right: isActive ? ThemeSpacing.medium / 2 : ThemeSpacing.large),
          color: ThemeColor.light,
          width: isActive ? 30 : 0,
          height: 1,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: ThemeFontSize.small,
              color: isActive ? ThemeColor.light : ThemeColor.inactiveLight),
        ),
      ],
    );
  }
}
