import 'package:flutter/material.dart';
import 'package:myapp/widgets/nav_icon.dart';
import 'package:myapp/widgets/nav_item.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NavIcon(onPressed: () {}),
        NavItem(title: 'Work', onPressed: () {}),
        NavItem(title: 'About', onPressed: () {}),
        NavItem(title: 'Contact', onPressed: () {}),
      ],
    );
  }
}
