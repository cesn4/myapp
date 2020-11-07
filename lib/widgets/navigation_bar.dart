import 'package:flutter/material.dart';
import 'package:myapp/constants/routes.dart';
import 'package:myapp/widgets/nav_icon.dart';
import 'package:myapp/widgets/nav_item.dart';

class NavigationBar extends StatelessWidget {
  final Function homeViewTrigger;
  final Function worksViewTrigger;
  final Function aboutViewTrigger;
  final Function contactViewTrigger;

  NavigationBar({
    @required this.homeViewTrigger,
    @required this.worksViewTrigger,
    @required this.aboutViewTrigger,
    @required this.contactViewTrigger,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavIcon(onPressed: homeViewTrigger),
            NavItem(title: 'Work', onPressed: worksViewTrigger),
            NavItem(title: 'About', onPressed: aboutViewTrigger),
            NavItem(title: 'Contact', onPressed: contactViewTrigger),
          ],
        ),
      ],
    );
  }
}
