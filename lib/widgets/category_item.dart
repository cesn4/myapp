import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  CategoryItem({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(fontSize: 20, color: Colors.white.withOpacity(0.8)),
      ),
    );
  }
}
