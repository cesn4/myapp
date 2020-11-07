import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';

class ProjectItem extends StatelessWidget {
  final String title;
  ProjectItem({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        textAlign: TextAlign.end,
        style: TextStyle(
            fontSize: 60, fontWeight: FontWeight.w800, color: Colors.white),
      ),
    );
  }
}
