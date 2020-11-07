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
    return Container(
      child: Text(
        title,
        style: TextStyle(fontSize: 20, color: isActive ? ThemeColor.light : ThemeColor.inactiveLight),
      ),
    );
  }
}
