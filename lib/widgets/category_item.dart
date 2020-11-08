import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';

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
          duration: const Duration(milliseconds: 200),
          margin: EdgeInsets.only(right: isActive? 20 : 50),
          color: ThemeColor.light,
          width: isActive? 30 : 0,
          height: 1,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 20,
              color: isActive ? ThemeColor.light : ThemeColor.inactiveLight),
        ),
      ],
    );
  }
}
