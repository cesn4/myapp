import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';
import 'package:myapp/widgets/buttons/fancy_button.dart';

class MobileNavigation extends StatefulWidget {
  final Function homeViewTrigger;
  final Function worksViewTrigger;
  final Function aboutViewTrigger;
  final Function contactViewTrigger;
  final int activeButton;

  MobileNavigation({
    Key key,
    @required this.homeViewTrigger,
    @required this.worksViewTrigger,
    @required this.aboutViewTrigger,
    @required this.contactViewTrigger,
    @required this.activeButton,
  }) : super(key: key);

  @override
  _MobileNavigationState createState() => _MobileNavigationState();
}

class _MobileNavigationState extends State<MobileNavigation> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double iconSize = 35.0;
    return Container(
      padding: EdgeInsets.only(bottom: 30.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
            ThemeColor.transparent,
            ThemeColor.pseudoDark
          ],
              stops: [
            0.0,
            1.0
          ])),
      height: 100,
      width: width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FancyButton(
              icon: Icons.person,
              isActive: widget.activeButton == 2,
              onPressed: widget.aboutViewTrigger,
              iconSize: iconSize),
          FancyButton(
              icon: Icons.work,
              isActive: widget.activeButton == 1,
              onPressed: widget.worksViewTrigger,
              iconSize: iconSize),
          FancyButton(
              icon: Icons.home,
              isActive: widget.activeButton == 0,
              onPressed: widget.homeViewTrigger,
              iconSize: iconSize),
          FancyButton(
              icon: Icons.contact_mail,
              isActive: widget.activeButton == 3,
              onPressed: widget.contactViewTrigger,
              iconSize: iconSize),
        ],
      ),
    );
  }
}
