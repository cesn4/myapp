import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';

class ProjectTitle extends StatelessWidget {
  final String title;
  ProjectTitle({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(color: ThemeColor.light, fontSize: 60),
      ),
    );
  }
}
