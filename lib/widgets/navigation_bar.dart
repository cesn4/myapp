import 'package:flutter/material.dart';
import 'package:myapp/widgets/nav_icon.dart';
import 'package:myapp/widgets/nav_item.dart';

class NavigationBar extends StatelessWidget {
  final Function homeViewTrigger;
  final Function worksViewTrigger;
  final Function aboutViewTrigger;
  final Function contactViewTrigger;
  final bool horizontal;

  NavigationBar({
    @required this.homeViewTrigger,
    @required this.worksViewTrigger,
    @required this.aboutViewTrigger,
    @required this.contactViewTrigger,
    @required this.horizontal,
  });

  @override
  Widget build(BuildContext context) {
    return horizontal
        ? SizedBox(
          width: MediaQuery.of(context).size.width - 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavIcon(onPressed: homeViewTrigger),
              NavItem(
                title: 'Work',
                onPressed: worksViewTrigger,
                horizontal: true,
              ),
              NavItem(
                title: 'About',
                onPressed: aboutViewTrigger,
                horizontal: true,
              ),
              NavItem(
                title: 'Contact',
                onPressed: contactViewTrigger,
                horizontal: true,
              ),
            ],
          ),
        )
        : Container(
            height: 320,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NavIcon(onPressed: homeViewTrigger),
                NavItem(
                  title: 'Work',
                  onPressed: worksViewTrigger,
                  horizontal: false,
                ),
                NavItem(
                  title: 'About',
                  onPressed: aboutViewTrigger,
                  horizontal: false,
                ),
                NavItem(
                  title: 'Contact',
                  onPressed: contactViewTrigger,
                  horizontal: false,
                ),
              ],
            ),
          );
  }
}
